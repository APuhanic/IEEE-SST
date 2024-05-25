import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class NewScreenButton extends StatelessWidget {
  const NewScreenButton({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onPressed,
    required this.routePath,
  });

  final String title;
  final String description;
  final IconData icon;
  final Function onPressed;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Icon(
              icon,
              color: AppColors.black,
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
    );
  }
}
