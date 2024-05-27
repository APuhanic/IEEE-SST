import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/home/widgets/new_screen_button.dart';

class SpeakerHub extends StatelessWidget {
  const SpeakerHub({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Speaker hub', style: AppTextStyle.titleLarge),
          ],
        ),
        const SizedBox(height: 24),
        NewScreenButton(
          title: 'My sessions and audience',
          description: 'Lorem ipsum',
          icon: Icons.calendar_month,
          onPressed: () {},
          routePath: '',
        ),
        const SizedBox(height: 16),
        NewScreenButton(
          title: 'Questions from my audience',
          description: 'Latest question from your audience',
          icon: Icons.question_mark,
          onPressed: () {},
          routePath: '',
        ),
        const SizedBox(height: 16),
        NewScreenButton(
          title: 'Promote my session',
          description: 'Reach more audience',
          icon: FontAwesomeIcons.bullhorn,
          onPressed: () {},
          routePath: '',
        )
      ],
    );
  }
}
