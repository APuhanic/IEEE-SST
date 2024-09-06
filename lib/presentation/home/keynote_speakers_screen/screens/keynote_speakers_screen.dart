import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/keynote_speaker_model/keynote_speaker_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/keynote_speakers_screen/widgets/keynote_speaker_card.dart';
import 'package:ieee_sst/util/load_json.dart';

//TODO: Refactor this screen to not be a duplicate of SteeringCommitteeScreen
class KeynoteSpeakersScreen extends StatelessWidget {
  const KeynoteSpeakersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<KeynoteSpeaker>>(
        future: loadKeyNoteSpeakers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: LoadingIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Data Available'));
          } else {
            final programCommittee = snapshot.data!;
            return CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('Keynote Speakers'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final committee = programCommittee[index];
                        return KeynoteSpeakerCard(speaker: committee);
                      },
                      childCount: programCommittee.length,
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
