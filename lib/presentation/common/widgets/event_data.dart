import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class EventData extends StatelessWidget {
  const EventData({
    super.key,
    required this.eventInfo,
    required this.icon,
  });

  final String eventInfo;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.black,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(eventInfo),
      ],
    );
  }
}
