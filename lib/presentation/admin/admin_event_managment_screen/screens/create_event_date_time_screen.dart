import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class CreateEventDateTimeScreen extends StatelessWidget {
  const CreateEventDateTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 40.0,
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text('Date and Time', style: AppTextStyle.titleSmall),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  child: Text('Next', style: AppTextStyle.button),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  FormField(
                    builder: (FormFieldState state) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            TableCalendar(
                              firstDay: DateTime.now(),
                              lastDay: DateTime(2050),
                              focusedDay: DateTime.now(),
                              headerStyle: HeaderStyle(
                                titleTextStyle: AppTextStyle.titleSmall,
                                formatButtonVisible: false,
                              ),
                              calendarStyle: CalendarStyle(
                                selectedDecoration: const BoxDecoration(
                                  color: AppColors.primary,
                                  shape: BoxShape.circle,
                                ),
                                todayDecoration: BoxDecoration(
                                  color: AppColors.primary.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              onDaySelected: (selectedDay, focusedDay) {
                                debugPrint(selectedDay.toIso8601String());
                              },
                            ),
                            TimePickerSpinner(),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
