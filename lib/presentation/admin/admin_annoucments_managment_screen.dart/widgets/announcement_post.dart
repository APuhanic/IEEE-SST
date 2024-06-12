import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';

class AnnouncementPost extends StatelessWidget {
  const AnnouncementPost({
    super.key,
    required this.annoucnement,
  });

  final Announcement annoucnement;
  @override
  Widget build(BuildContext context) {
    // TODO: Move padding to the screen?
    // TODO: Add announcement edit and delete?
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        height: 120,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '${annoucnement.fullName} •${annoucnement.timeposted} ',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
