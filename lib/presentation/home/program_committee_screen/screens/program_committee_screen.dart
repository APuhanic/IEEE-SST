import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';
import 'package:ieee_sst/presentation/home/steering_committee_screen/widgets/steering_committee_card.dart';
import 'package:ieee_sst/util/load_json.dart';

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
            final steeringCommittee = snapshot.data!;
            debugPrint('Conference Chairs: $steeringCommittee');
            return CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('Steering Committee'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final committee = steeringCommittee[index];
                        return SteeringCommitteeCard(committee: committee);
                      },
                      childCount: steeringCommittee.length,
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
