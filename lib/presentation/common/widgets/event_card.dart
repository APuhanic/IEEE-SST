import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/common/cubit/is_going_cubit.dart';
import 'package:ieee_sst/presentation/common/widgets/bottom_sheet_event_info.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsGoingCubit(),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => BottomSheetEventInfo(event: event),
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
                        event.name,
                        style: AppTextStyle.titleSmall,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const _IsGoingButtonBuilder()
                  ],
                ),
                const SizedBox(height: 8),
                EventData(
                  eventInfo: event.time!.toIso8601String().split('T')[0],
                  icon: FontAwesomeIcons.calendar,
                ),
                EventData(
                  eventInfo: event.time!.toIso8601String().split('T')[1],
                  icon: FontAwesomeIcons.clock,
                ),
                EventData(
                  eventInfo: event.location,
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
