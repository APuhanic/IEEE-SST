import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/conference_chairs_screen/widgets/conference_chair_card.dart';
import 'package:ieee_sst/util/load_json.dart';

class ConferenceChairScreen extends StatelessWidget {
  const ConferenceChairScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ConferenceChair>>(
        future: loadConferenceChairs(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: LoadingIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Data Available'));
          } else {
            final conferenceChairs = snapshot.data!;
            return CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('Conference Chairs'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final chair = conferenceChairs[index];
                        return ConferenceChairCard(chair: chair);
                      },
                      childCount: conferenceChairs.length,
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
