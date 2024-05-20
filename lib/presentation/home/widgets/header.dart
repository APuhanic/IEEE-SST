import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/login/bloc/login_bloc.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {},
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  context.read<LoginBloc>().add(const LoginEvent.getCurrentUser(
                        id: 'a14b1147-b44a-45cd-a7a3-7e00a87802f8',
                      ));
                },
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.white,
                ),
              ),
            ),
            Expanded(child: Container()),
            GestureDetector(
              onTap: () {
                context.go('/');
              },
              child: Image.asset(
                'assets/images/user-profile.png',
                height: 50,
              ),
            )
          ],
        );
      },
    );
  }
}
