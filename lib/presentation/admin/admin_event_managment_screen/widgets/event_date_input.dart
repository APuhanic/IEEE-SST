import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';
import 'package:logger/logger.dart';

class EventDateInput extends StatelessWidget {
  const EventDateInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<EventFormBloc, EventFormState>(
        builder: (context, state) {
          return TextFormField(
            controller: TextEditingController(
              text:
                  state.time == null ? '' : state.time.toString().split(' ')[0],
            ),
            onTap: () => _selectDate(context),
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon:
                  const Icon(Icons.date_range, color: AppColors.grayText),
              label: Text('Event Date', style: AppTextStyle.textForm),
              hintText: 'Event Date',
              hintStyle: AppTextStyle.textForm,
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

  _selectDate(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    ).then(
      (value) {
        Logger().w(value);
        context
            .read<EventFormBloc>()
            .add(EventFormEvent.eventDateChanged(value));
      },
    );
  }
}