import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card_list.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

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
        body: BlocProvider(
          create: (context) =>
              getIt<EventsManagmentBloc>()..add(const EventsEvent.loadEvents()),
          child: BlocBuilder<EventsManagmentBloc, EventsState>(
            builder: (context, state) {
              return RefreshIndicator(
                backgroundColor: AppColors.white,
                color: AppColors.primary,
                onRefresh: () async {
                  context
                      .read<EventsManagmentBloc>()
                      .add(const EventsEvent.loadEvents());
                },
                child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: <Widget>[
                      // TODO: Make a common sliver app bar?
                      const SliverAppBar(
                        floating: false,
                        pinned: true,
                        backgroundColor: AppColors.background,
                        shadowColor: Colors.transparent,
                        surfaceTintColor: AppColors.background,
                        title: Text('Event Managment'),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  const FilterChips(),
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
                                  BlocBuilder<EventsManagmentBloc, EventsState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(
                                        loading: () => const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        loaded: (events) =>
                                            AdminEventCardList(events: events),
                                        orElse: () => const SizedBox.shrink(),
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 24),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              );
            },
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}
