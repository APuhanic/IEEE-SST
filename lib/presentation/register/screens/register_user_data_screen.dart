import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/login/widgets/login_password_input.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';
import 'package:ieee_sst/presentation/register/widgets/confirm_password_input.dart';
import 'package:ieee_sst/presentation/register/widgets/register_button.dart';
import 'package:ieee_sst/presentation/register/widgets/user_name_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegistrationBloc>(
          create: (_) => getIt<RegistrationBloc>(),
        ),
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocConsumer<RegistrationBloc, RegistrationState>(
            listener: (context, state) {},
            builder: (context, state) => Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Register Account',
                    style: AppTextStyle.header,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Fill your details'),
                ),
                const SizedBox(height: 40),
                const UserNameInput(),
                const SizedBox(height: 24),
                const LoginPasswordInput(),
                const SizedBox(height: 24),
                const ConfirmPasswordInput(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyle.lightText,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const RegisterButton(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '- Or Continue With -',
                      style: AppTextStyle.lightText,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have an Account?',
                      style: AppTextStyle.lightText,
                    ),
                    TextButton(
                      onPressed: () => context.go('/'),
                      child: Text('Log In',
                          style: AppTextStyle.lightText.copyWith(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
