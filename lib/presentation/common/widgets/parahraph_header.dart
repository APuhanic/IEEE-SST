import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class ParagraphHeader extends StatelessWidget {
  const ParagraphHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //TODO: Common widget for headers with divders
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(text, style: AppTextStyle.darkBlueText),
        ),
        const SizedBox(width: 8.0),
        const Expanded(child: Divider(color: AppColors.darkBlue)),
      ],
    );
  }
}
