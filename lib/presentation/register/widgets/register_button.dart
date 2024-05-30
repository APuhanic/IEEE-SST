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
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: AppColors.primary,
                disabledBackgroundColor: AppColors.gray,
              ),
              onPressed: state.isValid
                  ? () => context.read<RegistrationBloc>().add(
                        RegistrationEvent.submitted(
                          email: state.email.value,
                          password: state.password.value,
                          fullName: state.fullName.value,
                          organization: state.organization.value,
                          position: state.position.value,
                        ),
                      )
                  : null,
              child: Text('SIGN UP', style: AppTextStyle.button));
        },
      ),
    );
  }
}
