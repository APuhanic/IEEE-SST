import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class GlobalRefreshIndicator extends StatelessWidget {
  const GlobalRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: AppColors.white,
      color: AppColors.primary,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
