import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';
import 'package:ieee_sst/presentation/home/steering_committee_screen/widgets/steering_committee_card.dart';
import 'package:ieee_sst/util/load_json.dart';

//TODO: Refactor this screen to not be a duplicate of SteeringCommitteeScreen
class ProgramCommitteeScreen extends StatelessWidget {
  const ProgramCommitteeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<SteeringCommittee>>(
        future: loadProgramCommittee(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
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
                  title: Text('Program Committee'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final committee = programCommittee[index];
                        return SteeringCommitteeCard(committee: committee);
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
