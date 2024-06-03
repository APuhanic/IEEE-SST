import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class Sponsor extends StatelessWidget {
  const Sponsor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Sponsor Name',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.grayText,
            ),
          ),
        ],
      ),
    );
  }
}
