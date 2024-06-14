import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';

class AnnouncementPostScreen extends StatelessWidget {
  const AnnouncementPostScreen({
    super.key,
    required this.announcement,
  });

  final Announcement announcement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 50,
            pinned: true,
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text(
              'Announcement Post',
              style: AppTextStyle.titleSmall,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        announcement.timeposted,
                        style: AppTextStyle.lightText,
                      ),
                      Text(
                        announcement.fullName,
                        style: AppTextStyle.lightText,
                      ),
                      Text(
                        announcement.title,
                        style: AppTextStyle.header,
                      ),
                      Text(
                        announcement.description,
                        style: AppTextStyle.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
