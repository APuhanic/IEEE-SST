import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';
import 'package:intl/intl.dart';

class BottomSheetEventInfo extends StatelessWidget {
  const BottomSheetEventInfo({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Center(
          child: Column(
            children: [
              Text(
                event.name,
                style: AppTextStyle.titleLarge,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(event.speaker, style: AppTextStyle.titleSmall),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  event.description,
                  style: AppTextStyle.lightText,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  EventData(
                    eventInfo:
                        '${event.startTime?.hour}:${event.startTime?.minute} - ${event.endTime?.hour}:${event.endTime?.minute}',
                    icon: Icons.access_time,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(event.attendeeCount.toString()),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.people_alt_outlined,
                    color: AppColors.black,
                  ),
                ],
              ),
              EventData(
                eventInfo: DateFormat('d.M.yyyy').format(event.date!),
                icon: Icons.calendar_today,
              ),
              EventData(
                eventInfo: event.location,
                icon: FontAwesomeIcons.locationDot,
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  EventData(
                    eventInfo: event.info?.toString() ?? 'No info',
                    icon: FontAwesomeIcons.circleInfo,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
