import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class EventSearchBar extends StatelessWidget {
  const EventSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search for events',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
