import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/register/widgets/full_name_input.dart';
import 'package:ieee_sst/presentation/register/widgets/next_registration_screen_button.dart';
import 'package:ieee_sst/presentation/register/widgets/organization_input.dart';
import 'package:ieee_sst/presentation/register/widgets/position_input.dart';

class RegisterUserDataScreen extends StatelessWidget {
  const RegisterUserDataScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your Account'),
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 32.0,
          right: 32.0,
        ),
        child: const Column(
          children: [
            Expanded(child: SizedBox()),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Fill your details'),
            ),
            SizedBox(height: 24),
            FullNameInput(),
            SizedBox(height: 24),
            OrganizationInput(),
            SizedBox(height: 24),
            PositionInput(),
            Expanded(child: SizedBox()),
            Align(
              alignment: Alignment.centerRight,
              child: NextRegisterScreenButton(
                  nextScreenPath: '/register/user_data/email'),
            ),
          ],
        ),
      ),
    );
  }
}
