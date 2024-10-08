import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class InfoScreenButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String routePath;

  const InfoScreenButton({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.routePath,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: FilledButton(
        style: FilledButton.styleFrom(
          elevation: 0,
          overlayColor: AppColors.white,
          backgroundColor: AppColors.background,
        ),
        onPressed: () => context.go(routePath),
        child: SizedBox(
          height: 80,
          child: Row(
            children: [
              const SizedBox(width: 8),
              Icon(
                icon,
                color: AppColors.primary,
                size: 50,
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.titleSmall,
                  ),
                  Text(
                    description,
                    style: AppTextStyle.lightText,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
