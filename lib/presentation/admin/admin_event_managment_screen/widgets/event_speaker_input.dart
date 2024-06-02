import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/create_event_bloc.dart';

class EventSpeakerInput extends StatelessWidget {
  const EventSpeakerInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEventBloc, CreateEventState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (eventName) => context
              .read<CreateEventBloc>()
              .add(CreateEventEvent.eventSpeakerChanged(eventName)),
          decoration: InputDecoration(
            label: Text('Event speaker', style: AppTextStyle.textForm),
            hintText: 'Event speaker',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.person_2, color: AppColors.grayText),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.grayText,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primary, width: 2.0),
            ),
          ),
        );
      },
    );
  }
}
