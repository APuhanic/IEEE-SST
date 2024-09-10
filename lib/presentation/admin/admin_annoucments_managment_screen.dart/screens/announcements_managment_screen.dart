import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/announcements_list.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class AnnouncementsManagmentScreen extends StatelessWidget {
  const AnnouncementsManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<AnnouncementBloc>()
        .add(const AnnouncementEvent.loadAnnouncements());
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
        body: BlocBuilder<AnnouncementBloc, AnnouncementState>(
          builder: (context, state) {
            return RefreshIndicator(
              backgroundColor: AppColors.white,
              color: AppColors.primary,
              onRefresh: () async {
                context
                    .read<AnnouncementBloc>()
                    .add(const AnnouncementEvent.loadAnnouncements());
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  const SliverAppBar(
                    backgroundColor: AppColors.background,
                    shadowColor: Colors.transparent,
                    surfaceTintColor: AppColors.background,
                    title: Text('Announcements'),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        BlocBuilder<AnnouncementBloc, AnnouncementState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loaded: (announcements) => AnnouncemetsList(
                                announcements: announcements,
                                isAdmin: true,
                              ),
                              loading: () => const Center(
                                child: LoadingIndicator(),
                              ),
                              error: (message) => Center(
                                child: Text(message),
                              ),
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
        drawer: const HomeScreenDrawer());
  }
}
