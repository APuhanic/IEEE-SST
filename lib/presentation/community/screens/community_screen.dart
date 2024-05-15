import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/community/widgets/community_screen_button.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({
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
            const SizedBox(height: 24),
            const CommunityScreenButton(
              icon: Icons.group,
              title: 'Organizer announcements',
              description: 'Announcements from the organizers',
            ),
            const CommunityScreenButton(
              icon: Icons.question_answer,
              title: 'Ask organizers',
              description: 'Ask questions to the organizers',
            ),
          ],
        ),
      ),
    );
  }
}
