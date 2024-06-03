import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/event_sponsor_managment/widgets/sponsor.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class SponsorManagmentScreen extends StatelessWidget {
  const SponsorManagmentScreen({
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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Sponsor Managment', style: AppTextStyle.titleSmall),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Sponsor(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}
