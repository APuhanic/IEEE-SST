import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/special_session_model/special_session_model.dart';

class SpecialSessionCard extends StatelessWidget {
  const SpecialSessionCard({
    super.key,
    required this.session,
  });

  final SpecialSession session;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          const Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Special Session',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      color: AppColors.darkBlue,
                      thickness: 1,
                    ),
                  )
                ],
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              session.title,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Organizers:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: session.organizers
                .map((organizer) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(organizer),
                    ))
                .toList(),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Description:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(session.shortDescription),
          session.detailedDescription.section1 == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(session.detailedDescription.section1 ?? ''),
                ),
          session.detailedDescription.section2 == null
              ? const SizedBox()
              : Text(session.detailedDescription.section2 ?? ''),
          session.detailedDescription.section3 == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(session.detailedDescription.section3 ?? ''),
                ),
          session.detailedDescription.conclusion == null
              ? const SizedBox()
              : Text(session.detailedDescription.conclusion ?? ''),
          session.detailedDescription.overview == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(session.detailedDescription.overview ?? ''),
                ),
          session.detailedDescription.knowledgeSharing == null
              ? const SizedBox()
              : Text(session.detailedDescription.knowledgeSharing ?? ''),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
