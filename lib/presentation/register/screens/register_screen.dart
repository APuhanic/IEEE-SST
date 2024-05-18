import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/login/widgets/email_input.dart';
import 'package:ieee_sst/presentation/login/widgets/password_input.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';
import 'package:ieee_sst/presentation/register/cubit/email_input_cubit.dart';
import 'package:ieee_sst/presentation/register/cubit/password_input_cubit.dart';
import 'package:ieee_sst/presentation/register/cubit/username_input_cubit.dart';
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
        BlocProvider<UserNameInputCubit>(
          create: (_) => getIt<UserNameInputCubit>(),
        ),
        BlocProvider<EmailInputCubit>(
          create: (_) => getIt<EmailInputCubit>(),
        ),
        BlocProvider<PasswordInputCubit>(
          create: (_) => getIt<PasswordInputCubit>(),
        ),
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocConsumer<RegistrationBloc, RegistrationState>(
            listener: (context, state) {
              state.maybeWhen(
                success: () {
                  context.go('/home');
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) => Column(
              children: [
                const SizedBox(height: 32),
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
                const EmailInput(),
                const SizedBox(height: 24),
                const PasswordInput(),
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
                SizedBox(
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
                        final userName =
                            context.read<UserNameInputCubit>().state;
                        final email = context.read<EmailInputCubit>().state;
                        final password =
                            context.read<PasswordInputCubit>().state;
                        context.read<RegistrationBloc>().add(
                              RegistrationEvent.register(
                                email: email,
                                password: password,
                                userName: userName,
                              ),
                            );
                      },
                      child: Text('SIGN UP', style: AppTextStyle.button)),
                ),
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
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _GoogleSignUp(),
                    SizedBox(width: 24),
                    _FacebookSignUp(),
                  ],
                ),
                const SizedBox(height: 24),
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

class _FacebookSignUp extends StatelessWidget {
  const _FacebookSignUp();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(68, 96, 160, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/facebook-logo.png'),
      ),
    );
  }
}

class _GoogleSignUp extends StatelessWidget {
  const _GoogleSignUp();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/images/google-logo.png'),
      ),
    );
  }
}