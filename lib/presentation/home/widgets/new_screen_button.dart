import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class NewScreenButton extends StatelessWidget {
  const NewScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          const Icon(
            Icons.calendar_month,
            color: AppColors.black,
            size: 50,
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My sessions and audience',
                style: AppTextStyle.titleSmall,
              ),
              Text(
                'Lorem ipsum',
                style: AppTextStyle.lightText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
