import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/cubit/is_going_cubit.dart';
import 'package:ieee_sst/presentation/common/widgets/user_tag_chip.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsGoingCubit(),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const _BottomSheetEventInfo();
            },
          );
        },
        child: Container(
          width: 325,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Really long event name that goes on and on and on',
                        style: AppTextStyle.titleSmall,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const _IsGoingButtonBuilder()
                  ],
                ),
                const SizedBox(height: 8),
                const _EventInfo(
                  eventInfo: '3.10.2024',
                  icon: FontAwesomeIcons.calendar,
                ),
                const _EventInfo(
                  eventInfo: '12:00 - 17:35',
                  icon: FontAwesomeIcons.clock,
                ),
                const _EventInfo(
                  eventInfo: 'Location Name',
                  icon: FontAwesomeIcons.locationDot,
                ),
                const SizedBox(height: 8),
                Text(
                  '3+ People are going to this event',
                  style: AppTextStyle.blueText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IsGoingButtonBuilder extends StatelessWidget {
  const _IsGoingButtonBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsGoingCubit, bool>(
      builder: (context, state) {
        return IconButton(
          onPressed: () => context.read<IsGoingCubit>().toggleIsGoing(),
          icon: state
              ? const Icon(Icons.event_available)
              : const Icon(Icons.event, color: AppColors.black),
          color: AppColors.primary,
        );
      },
    );
  }
}

class _BottomSheetEventInfo extends StatelessWidget {
  const _BottomSheetEventInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
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
                  const _EventInfo(
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
              const _EventInfo(
                eventInfo: '12:00 - 17:35',
                icon: FontAwesomeIcons.clock,
              ),
              const _EventInfo(
                eventInfo: 'Location Name',
                icon: FontAwesomeIcons.locationDot,
              ),
              Expanded(child: Container()),
              const Row(
                children: [
                  _EventInfo(
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

class _EventInfo extends StatelessWidget {
  const _EventInfo({
    required this.eventInfo,
    required this.icon,
  });

  final String eventInfo;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.black,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(eventInfo),
      ],
    );
  }
}
