import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/login/bloc/login_bloc.dart';
import 'package:ieee_sst/presentation/register/cubit/email_input_cubit.dart';
import 'package:ieee_sst/presentation/register/cubit/password_input_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppColors.primary,
          ),
          onPressed: () {
            final email = context.read<EmailInputCubit>().state;
            final password = context.read<PasswordInputCubit>().state;
            context.read<LoginBloc>().add(LoginEvent.login(
                  email: email,
                  password: password,
                ));
          },
          child: Text('LOG IN', style: AppTextStyle.button)),
    );
  }
}
