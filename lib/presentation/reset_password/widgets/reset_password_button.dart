import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
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
                context
                    .read<RegistrationBloc>()
                    .add(const RegistrationEvent.updatePassword());
                context.go(RoutePaths.home);
              },
              child: state.status.isInProgress
                  ? const CircularProgressIndicator(color: AppColors.white)
                  : Text('Reset Password', style: AppTextStyle.button)),
        );
      },
    );
  }
}
