import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen.dart/widgets/admin_event_card_list.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class EventManagmentScreen extends StatelessWidget {
  const EventManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.go('/admin_events_managment/create_event'),
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
                  const SizedBox(height: 24),
                  Text('Event managment', style: AppTextStyle.header),
                  const SizedBox(height: 24),
                  const AdminEventCardList(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}
