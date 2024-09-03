import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';

class ConferenceChairCard extends StatelessWidget {
  const ConferenceChairCard({
    super.key,
    required this.chair,
  });

  final ConferenceChair chair;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(chair.imageUrl),
                fit: BoxFit
                    .contain, // Ensure the image is contained within the available space
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(chair.role, style: AppTextStyle.blueText),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(color: AppColors.primary),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        chair.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(chair.institution),
                    ),
                    Text(chair.address),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(chair.phone),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(
                            text: chair.email,
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          chair.email,
                          style: AppTextStyle.lightText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
