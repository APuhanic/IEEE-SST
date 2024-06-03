import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/cubit/is_going_cubit.dart';
import 'package:ieee_sst/presentation/common/widgets/bottom_sheet_event_info.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';

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
            builder: (context) => const BottomSheetEventInfo(),
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
                const EventData(
                  eventInfo: '3.10.2024',
                  icon: FontAwesomeIcons.calendar,
                ),
                const EventData(
                  eventInfo: '12:00 - 17:35',
                  icon: FontAwesomeIcons.clock,
                ),
                const EventData(
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
