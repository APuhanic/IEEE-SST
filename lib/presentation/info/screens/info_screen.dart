import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/info/widgets/info_screen_button.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
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
            title: Text('Info', style: AppTextStyle.titleSmall),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Column(
                children: [
                  InfoScreenButton(
                    icon: Icons.group,
                    title: 'Organizer announcements',
                    description: 'Announcements from the organizers',
                    routePath: '/community/organizer_announcements',
                  ),
                  InfoScreenButton(
                    icon: Icons.question_answer,
                    title: 'Ask organizers',
                    description: 'Ask questions to the organizers',
                    routePath: '/community/ask_organizers',
                  ),
                  InfoScreenButton(
                    icon: Icons.online_prediction,
                    title: 'Virtual events',
                    description: 'Links to virtual events',
                    routePath: '',
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
