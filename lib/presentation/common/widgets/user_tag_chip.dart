import 'package:flutter/widgets.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class UserTagChip extends StatelessWidget {
  const UserTagChip({
    super.key,
    required this.tag,
  });

  final String tag;

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(capitalize(tag), style: AppTextStyle.tagText),
    );
  }
}
