import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/login/bloc/login/login_bloc.dart';
import 'package:ieee_sst/presentation/login/widgets/login_email_input.dart';
import 'package:ieee_sst/presentation/login/widgets/login_button.dart';
import 'package:ieee_sst/presentation/login/widgets/login_password_input.dart';
import 'package:ieee_sst/presentation/login/widgets/register_account_link.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(create: (_) => getIt<LoginBloc>()),
        ],
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status.isSuccess && state.isAdmin) {
              context.go(RoutePaths.adminHomeScreen);
            }
            if (state.status.isSuccess && !state.isAdmin) {
              context.go(RoutePaths.home);
            }
          },
          listenWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            return AutofillGroup(
              child: Padding(
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24.0, top: 40),
                      child: LoginEmailInput(),
                    ),
                    const LoginPasswordInput(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        state.status.isFailure
                            ? Text(
                                state.errorMessage,
                                style: AppTextStyle.errorText.copyWith(
                                  color: AppColors.warning.withOpacity(0.7),
                                ),
                              )
                            : const SizedBox.shrink(),
                        TextButton(
                          onPressed: () {
                            _showForgotPasswordBottomSheet(context);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: AppTextStyle.lightText,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: LoginButton(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('- Or Continue With -',
                            style: AppTextStyle.lightText),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: _LoginProviders(),
                    ),
                    const RegisterAccountLink(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showForgotPasswordBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allow for custom height
      builder: (context) {
        final mediaQuery = MediaQuery.of(context);
        final bottomInset = mediaQuery.viewInsets.bottom;

        return Container(
          decoration: const BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 16.0,
              bottom:
                  bottomInset + 16.0, // Adjust bottom padding to avoid overlap
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Allow height to be dynamic
                children: [
                  Text(
                    'Forgot Password',
                    style: AppTextStyle.titleLarge,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Enter your email address and we will send you a link to reset your password',
                    style: AppTextStyle.lightText,
                  ),
                  const SizedBox(height: 24),
                  const LoginEmailInput(),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(const LoginEvent.resetPassword());
                      Navigator.pop(context);
                    },
                    child: Text('Send Reset Link', style: AppTextStyle.button),
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
            onPressed: () => context
                .read<LoginBloc>()
                .add(const LoginEvent.loginWithGoogle()),
            icon: Image.asset('assets/images/google-logo.png'),
          ),
        ),
      ],
    );
  }
}
