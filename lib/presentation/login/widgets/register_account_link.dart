import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class RegisterAccountLink extends StatelessWidget {
  const RegisterAccountLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'New user?',
          style: AppTextStyle.lightText,
        ),
        TextButton(
          onPressed: () => context.go('/register'),
          child: Text('Create account',
              style: AppTextStyle.lightText.copyWith(
                fontWeight: FontWeight.w500,
              )),
        ),
      ],
    );
  }
}
