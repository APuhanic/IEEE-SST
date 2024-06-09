import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class OrganizerAnnouncements extends StatelessWidget {
  const OrganizerAnnouncements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    )),
                Text(
                  'Community',
                  style: AppTextStyle.header,
                ),
              ],
            ),
            Text('Organizer Announcements', style: AppTextStyle.lightText),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
