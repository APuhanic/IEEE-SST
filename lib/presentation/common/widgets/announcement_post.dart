import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';

class AnnouncementPost extends StatelessWidget {
  const AnnouncementPost({
    super.key,
    required this.annoucnement,
    required this.isAdmin,
  });

  final Announcement annoucnement;
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    // TODO: Add announcement edit and delete?
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${annoucnement.fullName} • ${annoucnement.timeposted} ',
                      style: AppTextStyle.lightText),
                  Text(annoucnement.title, style: AppTextStyle.titleSmall),
                  Text(annoucnement.description),
                ],
              ),
            ),
            Column(
              children: [
                // TODO: Size to row height?
                Image.asset(
                  'assets/images/ieee-sst-logo.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            isAdmin
                ? PopupMenuButton(
                    color: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Edit'),
                        onTap: () {},
                      ),
                      PopupMenuItem(
                        child: const Text('Delete'),
                        onTap: () {},
                      )
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
