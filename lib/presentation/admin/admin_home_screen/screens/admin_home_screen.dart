import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/home/widgets/header.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/new_screen_button.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Header(),
                ),
                const SizedBox(height: 24),
                Text('Admin Home Screen', style: AppTextStyle.header),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: MenagmentPart(),
                ),
              ],
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}

class MenagmentPart extends StatelessWidget {
  const MenagmentPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        NewScreenButton(
          title: 'Manage events',
          description: 'Add, delete, and edit events',
          icon: Icons.event_note_outlined,
          onPressed: () => context.go(RoutePaths.adminEventsMangment),
          routePath: '',
        ),
        const SizedBox(height: 16),
        NewScreenButton(
          title: 'Manage sponsors',
          description: 'Add, delete, and edit sponsors',
          icon: Icons.person_outline,
          onPressed: () {},
          routePath: '',
        ),
        const SizedBox(height: 16),
        NewScreenButton(
          title: 'Manage speakers',
          description: 'Add, delete, and edit speakers',
          icon: Icons.person_outline,
          onPressed: () {},
          routePath: '',
        ),
      ],
    );
  }
}
