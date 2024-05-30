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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Register Account'),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 32.0,
          right: 32.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Fill your details',
                style: AppTextStyle.lightText,
              ),
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
            const Expanded(child: SizedBox()),
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
