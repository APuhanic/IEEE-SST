import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/login/widgets/email_input.dart';
import 'package:ieee_sst/presentation/login/widgets/password_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'IEEE SST',
                style: AppTextStyle.header,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Fill your details'),
            ),
            const SizedBox(height: 40),
            const EmailInput(),
            const SizedBox(height: 24),
            const PasswordInput(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyle.lightText,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // TODO: Remake the button for responsiveness
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("LOG IN", style: AppTextStyle.button),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '- Or Continue With -',
                  style: AppTextStyle.lightText,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/google-logo.png'),
                  ),
                ),
                const SizedBox(width: 24),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(68, 96, 160, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/facebook-logo.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New user?',
                  style: AppTextStyle.lightText,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Create account',
                      style: AppTextStyle.lightText.copyWith(
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
