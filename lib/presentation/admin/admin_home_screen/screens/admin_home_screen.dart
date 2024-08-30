import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/new_screen_button.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());

    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return SliverAppBar(
                  expandedHeight: 40.0,
                  floating: true,
                  snap: true,
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('IEEE SST', style: AppTextStyle.titleSmall),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        state.maybeWhen(
                          loadedProfile: (profile) => profile.fullName,
                          error: (message) => message,
                          orElse: () => 'Loading...',
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    'Admin dashboard',
                    style: AppTextStyle.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: MenagmentPart(),
                  ),
                ],
              ),
            ),
          ],
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
