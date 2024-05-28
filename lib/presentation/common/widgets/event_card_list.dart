import 'package:flutter/material.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shrinkWrap: true,
        itemCount: 15,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => const EventCard(),
      ),
    );
  }
}
