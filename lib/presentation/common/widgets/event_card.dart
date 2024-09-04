import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/cubit/is_going_cubit.dart';
import 'package:ieee_sst/presentation/common/widgets/bottom_sheet_event_info.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';
import 'package:ieee_sst/util/debouncer.dart';
import 'package:intl/intl.dart';

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
        onTap: () => _showEventInfo(context),
        child: _buildCard(context),
      ),
    );
  }

  void _showEventInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      builder: (context) => BottomSheetEventInfo(event: event),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Container(
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
            _buildHeader(context),
            const SizedBox(height: 8),
            _buildEventData(),
            const SizedBox(height: 8),
            _buildAttendeeInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            event.name,
            style: AppTextStyle.titleSmall,
          ),
        ),
        const SizedBox(width: 16),
        _IsGoingButton(event: event),
      ],
    );
  }

  Widget _buildEventData() {
    return Column(
      children: [
        EventData(
          // TODO: Make an extansion on string for formating?
          eventInfo: DateFormat('d.M.yyyy').format(event.date!),
          icon: FontAwesomeIcons.calendar,
        ),
        EventData(
          eventInfo:
              '${event.startTime?.hour}:${event.startTime?.minute} - ${event.endTime?.hour}:${event.endTime?.minute}',
          icon: FontAwesomeIcons.clock,
        ),
        EventData(
          eventInfo: event.location,
          icon: FontAwesomeIcons.locationDot,
        ),
      ],
    );
  }

  Widget _buildAttendeeInfo() {
    return Text(
      '${event.attendeeCount}+ People are going to this event',
      style: AppTextStyle.blueText,
    );
  }
}

class _IsGoingButton extends StatefulWidget {
  const _IsGoingButton({required this.event});

  final Event event;

  @override
  _IsGoingButtonState createState() => _IsGoingButtonState();
}

class _IsGoingButtonState extends State<_IsGoingButton> {
  final Debouncer debouncer = Debouncer(milliseconds: 200);
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsGoingCubit, bool>(
      builder: (context, state) {
        return IconButton(
          onPressed: _onPressed,
          icon: isLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                )
              : _buildIcon(),
          color: AppColors.primary,
        );
      },
    );
  }

  void _onPressed() {
    setState(() => isLoading = true);
    debouncer.run(() {
      final eventBloc = context.read<EventsManagmentBloc>();
      if (widget.event.isGoing) {
        eventBloc.add(EventsEvent.markNotGoing(widget.event));
      } else {
        eventBloc.add(EventsEvent.markGoing(widget.event));
      }
      setState(() => isLoading = false);
    });
  }

  Icon _buildIcon() {
    return widget.event.isGoing
        ? const Icon(Icons.event_available)
        : const Icon(Icons.event, color: AppColors.black);
  }
}
