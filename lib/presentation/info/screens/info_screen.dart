import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/info/widgets/info_screen_button.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeScreenDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text('Info'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Column(
                children: [
                  InfoScreenButton(
                    icon: Icons.group,
                    title: 'Organizer announcements',
                    description: 'Announcements from the organizers',
                    routePath: '/info/organizer_announcements',
                  ),
                  InfoScreenButton(
                    icon: Icons.question_answer,
                    title: 'Ask anything',
                    description: 'Ask questions for anyone to answer',
                    routePath: '/info/ask_organizers',
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
