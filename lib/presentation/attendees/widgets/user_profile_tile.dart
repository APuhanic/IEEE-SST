import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/widgets/user_tag_chip.dart';

class UserProfileTile extends StatelessWidget {
  /// Displays the user profile tile with user name, status and role
  /// and a star icon to indicate the user is a speaker
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.person, color: AppColors.primary, size: 50),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'User Name',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'User Status',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              UserTagChip()
            ],
          ),
          Spacer(),
          Center(child: Icon(Icons.star, color: AppColors.primary))
        ],
      ),
    );
  }
}
