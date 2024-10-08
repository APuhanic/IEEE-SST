import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key, required this.profile});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Global avatar
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.white,
            backgroundImage: profile.imageUrl != null
                ? NetworkImage(profile.imageUrl!)
                : const AssetImage(
                    'assets/images/user.png',
                  ) as ImageProvider,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                profile.fullName,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                profile.organization ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                profile.country ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
