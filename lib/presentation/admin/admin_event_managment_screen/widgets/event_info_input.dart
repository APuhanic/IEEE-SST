import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';

class EventInfoInput extends StatelessWidget {
  const EventInfoInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFormBloc, EventFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (eventInfo) => context
              .read<EventFormBloc>()
              .add(EventFormEvent.infoChanged(eventInfo)),
          initialValue: state.info,
          decoration: InputDecoration(
            label: Text('Additional info', style: AppTextStyle.textForm),
            hintText: 'Additional info',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.info_outline_rounded,
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
