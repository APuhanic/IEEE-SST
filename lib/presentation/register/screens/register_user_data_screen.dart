import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';
import 'package:ieee_sst/presentation/register/widgets/country_input.dart';
import 'package:ieee_sst/presentation/register/widgets/full_name_input.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 32.0,
            right: 32.0,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Fill your details'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: FullNameInput(),
              ),
              OrganizationInput(),
              SizedBox(height: 24),
              PositionInput(),
              SizedBox(height: 24),
              CountryInput(),
              Align(
                alignment: Alignment.centerRight,
                child: _NextRegisterScreenButton(
                  nextScreenPath: '/register/user_data/email',
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextRegisterScreenButton extends StatelessWidget {
  const _NextRegisterScreenButton({
    required this.nextScreenPath,
  });

  final String nextScreenPath;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed:
              state.fullName.isValid ? () => context.go(nextScreenPath) : null,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primary,
            disabledBackgroundColor: AppColors.gray,
          ),
          child: Text(
            'Next',
            style: AppTextStyle.button,
          ),
        );
      },
    );
  }
}
