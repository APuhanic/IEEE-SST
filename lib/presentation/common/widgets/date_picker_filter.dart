import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';

class DatePickerFilter extends StatelessWidget {
  const DatePickerFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      height: 100,
      selectionColor: AppColors.primary,
      selectedTextColor: AppColors.white,
      daysCount: 7,
      onDateChange: (date) {
        context.read<EventsManagmentBloc>().add(
              EventsEvent.filterEvents(date: date),
            );
      },
    );
  }
}
