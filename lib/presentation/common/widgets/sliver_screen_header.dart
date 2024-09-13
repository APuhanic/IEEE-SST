import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class SliverScreenHeader extends StatelessWidget {
  const SliverScreenHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      backgroundColor: AppColors.background,
      shadowColor: Colors.transparent,
      surfaceTintColor: AppColors.background,
      title: Text(title),
    );
  }
}
