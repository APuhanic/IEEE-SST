import 'package:flutter/material.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card.dart';

class AdminEventCardList extends StatelessWidget {
  const AdminEventCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: 10,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => const AdminEventCard(),
      ),
    );
  }
}
