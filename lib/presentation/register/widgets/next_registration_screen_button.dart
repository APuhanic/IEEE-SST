import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class NextRegisterScreenButton extends StatelessWidget {
  const NextRegisterScreenButton({
    super.key,
    required this.nextScreenPath,
  });

  //TODO: Add cubit to disable button if there is no Full Name

  final String nextScreenPath;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.push(nextScreenPath),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColors.primary,
      ),
      child: Text(
        'Next',
        style: AppTextStyle.button,
      ),
    );
  }
}
