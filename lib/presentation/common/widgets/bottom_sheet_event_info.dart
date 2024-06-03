import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';
import 'package:ieee_sst/presentation/common/widgets/user_tag_chip.dart';

class BottomSheetEventInfo extends StatelessWidget {
  const BottomSheetEventInfo({super.key});

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
                'Applications and Use cases for Iot-2',
                style: AppTextStyle.titleLarge,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ime Prezime', style: AppTextStyle.titleSmall),
                      const UserTagChip(),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus euismod, fermentum turpis ac, tincidunt nunc. Nulla facilisi. Nullam nec nunc nec nunc.',
                  style: AppTextStyle.lightText,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const EventData(
                    eventInfo: '30.2.2024',
                    icon: FontAwesomeIcons.calendar,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const Text('20'),
                  const Icon(
                    Icons.people_alt_outlined,
                    color: AppColors.black,
                  ),
                ],
              ),
              const EventData(
                eventInfo: '12:00 - 17:35',
                icon: FontAwesomeIcons.clock,
              ),
              const EventData(
                eventInfo: 'Location Name',
                icon: FontAwesomeIcons.locationDot,
              ),
              Expanded(child: Container()),
              const Row(
                children: [
                  EventData(
                    eventInfo: 'Second floor, K2-12',
                    icon: FontAwesomeIcons.circleInfo,
                  ),
                ],
              ),
              // TODO: Figure out a way to make the event info show without a sized box
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
