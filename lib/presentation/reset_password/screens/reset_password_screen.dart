import 'package:flutter/material.dart';

import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/widgets/confirm_password_input.dart';
import 'package:ieee_sst/presentation/register/widgets/registration_password_input.dart';
import 'package:ieee_sst/presentation/reset_password/widgets/reset_password_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            //BAck button
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reset Password',
                style: AppTextStyle.header,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Enter your new password below'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RegistrationPasswordInput(),
            ),
            const ConfirmPasswordInput(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: ResetPasswordButton(),
            ),
          ],
        ),
      ),
    );
  }
}
