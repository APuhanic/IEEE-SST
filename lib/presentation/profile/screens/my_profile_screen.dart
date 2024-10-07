import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';
import 'package:ieee_sst/presentation/profile/widgets/edit_profile_dialog.dart';
import 'package:ieee_sst/presentation/profile/widgets/profile_image_managment.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async =>
            context.read<ProfileBloc>().add(const ProfileEvent.loadProfile()),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: const Text('My Profile'),
              leading: BackButton(onPressed: () => Navigator.of(context).pop()),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      <Widget>[
                        state.maybeWhen(
                          orElse: () => const LoadingIndicator(),
                          loadedProfile: (profile) =>
                              UserProfileManagment(profile: profile),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: () {
                              context.push(RoutePaths.resetPassword);
                            },
                            child: Text(
                              'Reset password',
                              style: AppTextStyle.blueButtonText,
                            )),
                        TextButton(
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.signOut());
                              if (!context.mounted) return;
                              context.go(RoutePaths.login);
                            },
                            child: Text(
                              'Log Out',
                              style: AppTextStyle.blueButtonText,
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfileManagment extends StatelessWidget {
  const UserProfileManagment({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 24),
                ProfileImageManagment(profile: profile),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(profile.fullName, style: AppTextStyle.titleSmall),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(profile.email),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Text(profile.organization ?? 'No organization'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(profile.position ?? 'No position'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(profile.country ?? ''),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              onPressed: () {
                context.read<RegistrationBloc>().add(
                      RegistrationEvent.setInitialValues(
                        profile.organization ?? '',
                        profile.position ?? '',
                        profile.country ?? '',
                      ),
                    );
                showAdaptiveDialog(
                  context: context,
                  builder: (context) {
                    return const EditProfileDialog();
                  },
                );
              },
              icon: const Icon(
                Icons.edit,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
