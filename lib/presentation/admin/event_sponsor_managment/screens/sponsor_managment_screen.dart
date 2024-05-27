import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/home/widgets/header.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class AnnouncementsManagmentScreen extends StatelessWidget {
  const AnnouncementsManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.primary,
          elevation: 0,
          child: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    // TODO: Make it a common widget?
                    child: Header(),
                  ),
                  const SizedBox(height: 24),
                  Text('Announcement Managment Screen',
                      style: AppTextStyle.header),
                ],
              ),
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}
