import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class CommunityScreenButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const CommunityScreenButton({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          // TODO: Add route path class
          context.go('/community/organizer_announcements');
        },
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
              const SizedBox(width: 16),
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
