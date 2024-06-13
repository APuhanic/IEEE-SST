import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Example question', style: AppTextStyle.titleSmall),
            Text('Name Surname', style: AppTextStyle.lightText),
            const Text('Lorem ipsum dolor sit amet. Nulla nec odio.'),
          ],
        ),
        Expanded(child: Container()),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('2 ', style: AppTextStyle.lightText),
                const Icon(Icons.comment_outlined, color: AppColors.grayText),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
