import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/widgets/announcement.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class AnnouncementsManagmentScreen extends StatelessWidget {
  const AnnouncementsManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        body: CustomScrollView(
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
                  const AnnouncementPost(),
                  const AnnouncementPost(),
                  const AnnouncementPost(),
                  const AnnouncementPost(),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'No announcements yet',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: const HomeScreenDrawer());
  }
}
