import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/keynote_speaker_model/keynote_speaker_model.dart';

class KeynoteSpeakerCard extends StatelessWidget {
  const KeynoteSpeakerCard({
    super.key,
    required this.speaker,
  });

  final KeynoteSpeaker speaker;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Column(
        children: [
          Text(
            speaker.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: AppColors.darkBlue,
            ),
          ),
          Text(
            speaker.institution,
            style: const TextStyle(
              fontSize: 18.0,
              color: AppColors.grayText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Image(
              image: AssetImage(speaker.image),
              fit: BoxFit
                  .contain, // Ensure the image is contained within the available space
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Title:',
              style: TextStyle(
                  color: Color.fromRGBO(26, 81, 122, 1),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              speaker.title,
              style: const TextStyle(
                color: Color.fromRGBO(26, 81, 122, 1),
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              speaker.abstract,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: AppColors.grayText,
                fontSize: 16.0,
              ),
            ),
          ),
          Text(
            speaker.cv,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: AppColors.grayText,
              fontSize: 16.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
