import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: AppTextStyle.textForm,
          filled: true,
          fillColor: AppColors.white,
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: AppColors.grayText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        enableSuggestions: false,
        autocorrect: false,
      ),
    );
  }
}
