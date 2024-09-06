import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';

class LoginEmailInput extends StatelessWidget {
  const LoginEmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: add builder instead?
    final state = context.watch<LoginBloc>().state;
    return SizedBox(
      height: 60,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onChanged: (value) =>
            context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
        decoration: InputDecoration(
          hintText: 'Email Address',
          hintStyle: AppTextStyle.textForm,
          filled: true,
          fillColor: state.status.isFailure
              ? AppColors.warning.withOpacity(0.1)
              : AppColors.white,
          prefixIcon: const Icon(
            Icons.mail_outline,
            color: AppColors.grayText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
