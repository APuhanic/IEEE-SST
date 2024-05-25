import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginBloc>().state;
    return SizedBox(
      height: 60,
      child: TextFormField(
        onChanged: (value) => context.read<LoginBloc>().add(
              LoginEvent.passwordChanged(value),
            ),
        textInputAction: TextInputAction.done,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: AppTextStyle.textForm,
          filled: true,
          fillColor: state.status.isFailure
              ? AppColors.warning.withOpacity(0.1)
              : AppColors.white,
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: AppColors.grayText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        enableSuggestions: false,
        autocorrect: false,
      ),
    );
  }
}