import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/event_data.dart';
import 'package:intl/intl.dart';

class AdminEventCard extends StatelessWidget {
  const AdminEventCard({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
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
                _PopupMenu(event: event)
              ],
            ),
            const SizedBox(height: 8),
            EventData(
              eventInfo: DateFormat('d.M.yyyy').format(event.date!),
              icon: Icons.calendar_today,
            ),
            EventData(
              eventInfo:
                  '${event.startTime?.hour}:${event.startTime?.minute} - ${event.endTime?.hour}:${event.endTime?.minute}',
              icon: Icons.access_time,
            ),
            EventData(
              eventInfo: event.location,
              icon: FontAwesomeIcons.locationDot,
            ),
            const SizedBox(height: 8),
            EventData(eventInfo: event.info ?? 'No info', icon: Icons.info)
          ],
        ),
      ),
    );
  }
}

class _PopupMenu extends StatelessWidget {
  const _PopupMenu({
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: const Text('Edit'),
          onTap: () {
            context
                .read<EventFormBloc>()
                .add(EventFormEvent.setInitialValues(event));
            context.go('/admin_events_managment/update_event');
          },
        ),
        PopupMenuItem(
          child: const Text('Delete'),
          onTap: () {
            context
                .read<EventsManagmentBloc>()
                .add(EventsEvent.deleteEvent(event));
          },
        )
      ],
    );
  }
}
