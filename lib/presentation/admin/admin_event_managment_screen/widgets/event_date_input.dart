import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';

class EventDateInput extends StatelessWidget {
  const EventDateInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFormBloc, EventFormState>(
      builder: (context, state) {
        return TextFormField(
          controller: TextEditingController(
            text: state.date == null ? '' : state.date.toString().split(' ')[0],
          ),
          onTap: () => _selectDate(context),
          readOnly: true,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.date_range, color: AppColors.grayText),
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
    );
  }

  _selectDate(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(primary: AppColors.primary),
          ),
          child: child!,
        );
      },
    ).then(
      (value) =>
          context.read<EventFormBloc>().add(EventFormEvent.dateChanged(value)),
    );
  }
}
