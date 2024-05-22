import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RegistrationBloc>().state;

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
            context.read<RegistrationBloc>().add(RegistrationEvent.submitted(
                  email: state.email.value,
                  password: state.password.value,
                  userName: state.userName.value,
                ));
          },
          child: Text('SIGN UP', style: AppTextStyle.button)),
    );
  }
}
