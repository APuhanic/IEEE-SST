import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class AttendeesSearchBar extends StatelessWidget {
  const AttendeesSearchBar({
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
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            hintText: 'Search for attendees',
            hintStyle: AppTextStyle.lightText.copyWith(height: 2),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
