import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/announcements_list.dart';
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
        body: BlocBuilder<AnnouncementBloc, AnnouncementState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text(
                    'Announcements',
                    style: AppTextStyle.titleSmall,
                  ),
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
                              child: CircularProgressIndicator(),
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
            );
          },
        ),
        drawer: const HomeScreenDrawer());
  }
}
