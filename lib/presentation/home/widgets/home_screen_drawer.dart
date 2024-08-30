import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/cubit/cubit/auth_session_cubit.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
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
        // TODO change to dropdown menu or a bottom sheet with tiles
        return Drawer(
          backgroundColor: AppColors.background,
          surfaceTintColor: AppColors.background,
          child: ListView(
            children: [
              SizedBox(
                height: 50,
                child: DrawerHeader(
                  margin: const EdgeInsets.all(0),
                  child: Text(
                    'IEEE SST 2024',
                    style: AppTextStyle.titleLarge,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Sponsors'),
                onTap: () {
                  context.go(RoutePaths.sponsors);
                },
              ),
              ListTile(
                title: const Text('Documents'),
                onTap: () {
                  context.go(RoutePaths.documents);
                },
              ),
              BlocBuilder<AuthSessionCubit, AuthSessionState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    isAdmin: (isInAdminMode) {
                      final text = isInAdminMode
                          ? 'Exit Admin Mode'
                          : 'Enter Admin Mode';
                      final destination = isInAdminMode
                          ? RoutePaths.agenda
                          : RoutePaths.adminHomeScreen;
                      return ListTile(
                        title: Text(text),
                        onTap: () {
                          context.go(destination);
                          context.read<AuthSessionCubit>().toggleAdminMode();
                        },
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
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
    );
  }
}
