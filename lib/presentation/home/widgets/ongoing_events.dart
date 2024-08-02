import 'package:flutter/material.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card.dart';

class OngoingEvents extends StatelessWidget {
  const OngoingEvents({
    super.key,
    required this.events,
  });

  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: events.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) => EventCard(
          event: events[index],
        ),
      ),
    );
  }
}
