import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card_list.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class EventManagmentScreen extends StatelessWidget {
  const EventManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.go('/admin_events_managment/event_name'),
          backgroundColor: AppColors.primary,
          elevation: 0,
          child: const FaIcon(
            FontAwesomeIcons.calendarPlus,
            color: AppColors.white,
          ),
        ),
        // TODO: Remove the provider?
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Event Managment',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FilterChips(),
                  const SizedBox(height: 24),
                  DatePicker(
                    height: 100,
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: AppColors.primary,
                    selectedTextColor: AppColors.white,
                    onDateChange: (date) {
                      // New date selected
                    },
                    daysCount: 7,
                  ),
                  const AdminEventCardList(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}
