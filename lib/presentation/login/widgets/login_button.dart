import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginBloc>().state;

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
            TextInput.finishAutofillContext();

            context.read<LoginBloc>().add(LoginEvent.submitted(
                  state.email.value,
                  state.password.value,
                ));
          },
          child: state.status.isInProgress
              ? const CircularProgressIndicator(color: AppColors.white)
              : Text('Log in', style: AppTextStyle.button)),
    );
  }
}
