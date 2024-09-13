import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';

class EventLocationInput extends StatelessWidget {
  const EventLocationInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFormBloc, EventFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.location,
          onChanged: (eventLocation) => context
              .read<EventFormBloc>()
              .add(EventFormEvent.locationChanged(eventLocation)),
          decoration: InputDecoration(
            label: Text('Event location', style: AppTextStyle.textForm),
            hintText: 'Event location',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.location_on_outlined,
                color: AppColors.grayText),
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
