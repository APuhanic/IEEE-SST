import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class AppTextStyle {
  static TextStyle header = const TextStyle(
    fontSize: 30,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textForm = const TextStyle(
    fontSize: 16,
    color: AppColors.grayText,
    fontWeight: FontWeight.w100,
  );

  static TextStyle lightText = const TextStyle(
    fontSize: 16,
    color: AppColors.grayText,
    fontWeight: FontWeight.w100,
  );

  static TextStyle button = const TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle titleLarge = const TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleSmall = const TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blueText = const TextStyle(
    fontSize: 12,
    color: AppColors.primary,
    fontWeight: FontWeight.normal,
  );

  static TextStyle blueButtonText = const TextStyle(
    fontSize: 15,
    color: AppColors.primary,
  );

  static TextStyle tagText = const TextStyle(
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle errorText = const TextStyle(
    fontSize: 14,
    color: AppColors.warning,
    fontWeight: FontWeight.normal,
  );

  static TextStyle nameText = const TextStyle(
    fontSize: 16,
    color: AppColors.black,
  );
  static TextStyle userStatusText = const TextStyle(
    fontSize: 12,
    color: AppColors.grayText,
  );

  static TextStyle userGotMessage = const TextStyle(
    fontSize: 12,
    color: AppColors.black,
  );

  static TextStyle userComment = const TextStyle(
    fontSize: 20,
    color: AppColors.black,
  );

  static TextStyle blackButtonText = const TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle darkBlueText = const TextStyle(
    fontSize: 16,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w600,
  );
}
