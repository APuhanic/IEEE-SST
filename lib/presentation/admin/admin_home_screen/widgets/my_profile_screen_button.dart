import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';

class MyProfileScreenButton extends StatelessWidget {
  const MyProfileScreenButton({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(RoutePaths.profile),
      child: CircleAvatar(
        backgroundColor: AppColors.background,
        backgroundImage: profile.imageUrl != null
            ? NetworkImage(profile.imageUrl!)
            : const AssetImage('assets/images/user.png') as ImageProvider,
      ),
    );
  }
}
