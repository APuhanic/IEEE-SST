import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';

class SteeringCommitteeCard extends StatelessWidget {
  const SteeringCommitteeCard({
    super.key,
    required this.committee,
  });

  final CommitteeMember committee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        committee.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(committee.institution),
                    Text(committee.country),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
