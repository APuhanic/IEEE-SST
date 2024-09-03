import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class NewScreenButton extends StatelessWidget {
  const NewScreenButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.routePath,
  });

  final String title;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: AppTextStyle.blackButtonText,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
