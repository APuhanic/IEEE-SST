import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class RegistrationEmailInput extends StatelessWidget {
  const RegistrationEmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        onChanged: (value) => context.read<RegistrationBloc>().add(
              RegistrationEvent.emailChanged(value),
            ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: 'Email Address',
          hintStyle: AppTextStyle.textForm,
          filled: true,
          fillColor: AppColors.white,
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
