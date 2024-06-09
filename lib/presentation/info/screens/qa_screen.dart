import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class QaScreen extends StatelessWidget {
  const QaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 50,
            pinned: true,
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text(
              'Ask Organizers',
              style: AppTextStyle.titleSmall,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Text('Test', style: AppTextStyle.titleSmall),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
