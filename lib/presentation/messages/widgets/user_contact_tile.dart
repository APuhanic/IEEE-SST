import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class UserContactTile extends StatelessWidget {
  const UserContactTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/user-profile.png'),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User Name',
                style: AppTextStyle.userNameText,
              ),
              Row(
                children: [
                  Text(
                    'User Status',
                    style: AppTextStyle.userStatusText,
                  ),
                  Text(
                    ' • 2h',
                    style: AppTextStyle.userStatusText.copyWith(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              '2',
              style: AppTextStyle.tagText,
            ),
          ),
        ],
      ),
    );
  }
}
