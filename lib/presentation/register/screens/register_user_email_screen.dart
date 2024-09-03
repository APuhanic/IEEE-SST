import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/widgets/confirm_password_input.dart';
import 'package:ieee_sst/presentation/register/widgets/register_button.dart';
import 'package:ieee_sst/presentation/register/widgets/registration_email_input.dart';
import 'package:ieee_sst/presentation/register/widgets/registration_password_input.dart';

class RegisterUserEmailScreen extends StatelessWidget {
  const RegisterUserEmailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Allow the keyboard to push up the content
      appBar: AppBar(
        title: const Text('Register Account'),
        backgroundColor: AppColors.background,
      ),
      body: SingleChildScrollView(
        // Make the content scrollable
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 32.0,
          right: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                height: 24), // Space to adjust the vertical alignment
            Text(
              'Fill your details',
              style: AppTextStyle.lightText,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: RegistrationEmailInput(),
            ),
            const RegistrationPasswordInput(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: ConfirmPasswordInput(),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: RegisterButton(),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
