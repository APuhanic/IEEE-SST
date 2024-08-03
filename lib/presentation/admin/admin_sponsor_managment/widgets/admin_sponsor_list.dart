import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/admin_sponsor_card.dart';

class AdminSponsorList extends StatelessWidget {
  const AdminSponsorList({
    super.key,
    required this.sponsors,
  });

  final List<Sponsor> sponsors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: sponsors.isEmpty
          ? const Center(child: Text('No sponsors found'))
          : ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: sponsors.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) =>
                  AdminSponsorCard(sponsor: sponsors[index]),
            ),
    );
  }
}
