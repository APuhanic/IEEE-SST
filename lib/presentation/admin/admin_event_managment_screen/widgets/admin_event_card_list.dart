import 'package:flutter/material.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card.dart';

class AdminEventCardList extends StatelessWidget {
  const AdminEventCardList({
    super.key,
    required this.events,
  });

  final List<Event> events;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: events.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => AdminEventCard(event: events[index]),
      ),
    );
  }
}
