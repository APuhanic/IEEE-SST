import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';

class EventStartTimeInput extends StatelessWidget {
  const EventStartTimeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFormBloc, EventFormState>(
      builder: (context, state) {
        return TextFormField(
          controller: TextEditingController(
            text: state.startTime == null
                ? ''
                : state.startTime.toString().split(' ')[1],
          ),
          readOnly: true,
          onTap: () => _selectTime(context),
          decoration: InputDecoration(
            label: Text('Event start time', style: AppTextStyle.textForm),
            hintText: 'Event  time',
            hintStyle: AppTextStyle.textForm,
            prefixIcon:
                const Icon(Icons.access_time, color: AppColors.grayText),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColors.grayText),
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

  _selectTime(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    showTimePicker(
      context: context,
      hourLabelText: 'Hour',
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(primary: AppColors.primary),
          ),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!,
          ),
        );
      },
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: TimeOfDay.now(),
    ).then(
      (value) {
        if (value == null) return;
        final dateTimeValue = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          value.hour,
          value.minute,
        );
        context
            .read<EventFormBloc>()
            .add(EventFormEvent.eventStartTimeChanged(dateTimeValue));
      },
    );
  }
}
