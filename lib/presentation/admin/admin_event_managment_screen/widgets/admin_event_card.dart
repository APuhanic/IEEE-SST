import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class AdminEventCard extends StatelessWidget {
  const AdminEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Really long event name that goes on and on and on',
                    style: AppTextStyle.titleSmall,
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_sharp,
                    color: AppColors.gray,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            const Text('3.10.2024'),
            const Text('12:00 - 17:35'),
            const SizedBox(height: 8),
            Text(
              '3 New Attendances',
              style: AppTextStyle.blueText,
            )
          ],
        ),
      ),
    );
  }
}
