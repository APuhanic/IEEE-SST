import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

// TODO: Annoucements -> Notifications?
class OrganizerAnnouncements extends StatelessWidget {
  const OrganizerAnnouncements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ],
      ),
    );
  }
}
