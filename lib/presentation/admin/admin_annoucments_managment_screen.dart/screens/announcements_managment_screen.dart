import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/announcement_post.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/common/widgets/sliver_screen_header.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class AnnouncementsManagmentScreen extends StatelessWidget {
  const AnnouncementsManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<AnnouncementManagmentBloc>()
        .add(const AnnouncementManagmentEvent.loadAnnouncements());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.go('/admin_announcements/create_announcement');
          },
          backgroundColor: AppColors.primary,
          elevation: 0,
          child: const Icon(
            Icons.add_alert_outlined,
            color: AppColors.white,
          ),
        ),
        // 2 bloc builders, need to fix?
        body:
            BlocBuilder<AnnouncementManagmentBloc, AnnouncementManagmentState>(
          builder: (context, state) {
            return RefreshIndicator(
              backgroundColor: AppColors.white,
              color: AppColors.primary,
              onRefresh: () async {
                context
                    .read<AnnouncementManagmentBloc>()
                    .add(const AnnouncementManagmentEvent.loadAnnouncements());
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  const SliverScreenHeader(title: 'Announcements'),
                  state.maybeWhen(
                    orElse: () => const SliverFillRemaining(
                      child: Center(
                        child: LoadingIndicator(),
                      ),
                    ),
                    loaded: (announcements) {
                      return SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return AnnouncementPost(
                              announcement: announcements[index],
                              isAdmin: true,
                            );
                          },
                          childCount: announcements.length,
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
        drawer: const HomeScreenDrawer());
  }
}
