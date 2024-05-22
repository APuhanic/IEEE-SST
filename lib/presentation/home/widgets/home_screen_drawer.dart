import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            unauthenticated: () {
              context.go(RoutePaths.login);
            },
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
          return Drawer(
            backgroundColor: AppColors.white,
            child: ListView(
              children: [
                const DrawerHeader(
                  child: Text('IEEE SST Forum 2024'),
                ),
                ListTile(
                  title: const Text('Sponsors'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Photos'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Documents'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Log out',
                      style: TextStyle(
                        color: AppColors.primary,
                      )),
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
