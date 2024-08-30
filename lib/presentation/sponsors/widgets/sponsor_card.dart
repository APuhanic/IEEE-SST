import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';

class SponsorCard extends StatelessWidget {
  const SponsorCard({
    super.key,
    required this.sponsor,
  });

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          // Centering the text and allowing it to wrap to the next row
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              sponsor.name,
              style: AppTextStyle.nameText,
              textAlign: TextAlign.center, // Center the text
              maxLines: null, // Allow unlimited lines
              overflow: TextOverflow.visible, // Let the text wrap naturally
            ),
          ),
          // Centering the image
          Expanded(
            child: Center(
              child: Image.network(
                sponsor.imageUrl,
                fit: BoxFit
                    .contain, // Ensure the image is contained within the available space
              ),
            ),
          ),
        ],
      ),
    );
  }
}
