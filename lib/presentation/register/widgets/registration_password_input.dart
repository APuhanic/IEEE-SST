import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/cubit/show_password_cubit.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class RegistrationPasswordInput extends StatelessWidget {
  const RegistrationPasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPasswordCubit(),
      child: SizedBox(
        height: 60,
        child: BlocBuilder<ShowPasswordCubit, bool>(
          builder: (context, state) {
            return TextFormField(
              onChanged: (value) => context
                  .read<RegistrationBloc>()
                  .add(RegistrationEvent.passwordChanged(value)),
              obscureText: state,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: AppTextStyle.textForm,
                filled: true,
                fillColor: AppColors.white,
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColors.grayText,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: state
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
