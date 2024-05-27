import 'package:flutter/material.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) => const EventCard(),
      ),
    );
  }
}
