import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class GlobalInkWell extends StatelessWidget {
  const GlobalInkWell({super.key, required this.child, required this.onTap});

  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverDuration: const Duration(milliseconds: 100),
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.background,
        ),
        child: child,
      ),
    );
  }
}
