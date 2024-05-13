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
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
}
