import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';
import 'package:ieee_sst/presentation/login/widgets/email_input.dart';
import 'package:ieee_sst/presentation/login/widgets/login_button.dart';
import 'package:ieee_sst/presentation/login/widgets/password_input.dart';
import 'package:ieee_sst/presentation/login/widgets/register_account_link.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (_) => getIt<LoginBloc>(),
          ),
        ],
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status.isSuccess) {
              context.go('/home');
            }
            if (state.status.isFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Authentication Failure'),
                  ),
                );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'IEEE SST',
                      style: AppTextStyle.header,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Fill your details'),
                  ),
                  const SizedBox(height: 40),
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
                  const LoginButton(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('- Or Continue With -',
                          style: AppTextStyle.lightText),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const _LoginProviders(),
                  const SizedBox(height: 24),
                  const RegisterAccountLink(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginProviders extends StatelessWidget {
  const _LoginProviders();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
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
        ),
        const SizedBox(width: 24),
        Container(
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
        ),
      ],
    );
  }
}
