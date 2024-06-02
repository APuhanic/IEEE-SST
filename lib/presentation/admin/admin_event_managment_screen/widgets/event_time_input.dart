import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/create_event_bloc.dart';

class EventTimeInput extends StatelessWidget {
  const EventTimeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CreateEventBloc, CreateEventState>(
        builder: (context, state) {
          return TextFormField(
            controller: TextEditingController(
              text: state.eventTime == null
                  ? ''
                  : state.eventTime?.format(context),
            ),
            readOnly: true,
            onTap: () => _selectTime(context),
            decoration: InputDecoration(
              label: Text('Event time', style: AppTextStyle.textForm),
              hintText: 'Event time',
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
      ),
    );
  }

  _selectTime(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    showTimePicker(
      context: context,
      hourLabelText: 'Hour',
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: TimeOfDay.now(),
    ).then(
      (value) {
        context
            .read<CreateEventBloc>()
            .add(CreateEventEvent.eventTimeChanged(value));
      },
    );
  }
}
