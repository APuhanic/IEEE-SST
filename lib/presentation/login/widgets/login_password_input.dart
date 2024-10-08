import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/cubit/show_password_cubit.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPasswordCubit(),
      child: SizedBox(
        height: 60,
        child: Builder(
          builder: (context) {
            final showPasswordState = context.watch<ShowPasswordCubit>().state;
            final loginState = context.watch<LoginBloc>().state;
            return TextFormField(
              onChanged: (value) {
                context
                    .read<LoginBloc>()
                    .add(LoginEvent.passwordChanged(value));
              },
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.password],
              obscureText: showPasswordState,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: AppTextStyle.textForm,
                filled: true,
                fillColor: loginState.status.isFailure
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
                suffixIcon: showPasswordState
                    ? IconButton(
                        icon: const Icon(Icons.visibility_off),
                        onPressed: () =>
                            context.read<ShowPasswordCubit>().toggle(),
                      )
                    : IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () =>
                            context.read<ShowPasswordCubit>().toggle(),
                      ),
              ),
              enableSuggestions: false,
              autocorrect: false,
            );
          },
        ),
      ),
    );
  }
}
