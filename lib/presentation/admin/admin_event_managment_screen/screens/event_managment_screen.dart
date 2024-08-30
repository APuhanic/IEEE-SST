import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card_list.dart';
import 'package:ieee_sst/presentation/common/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/date_picker_filter.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class EventManagmentScreen extends StatelessWidget {
  const EventManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<EventsManagmentBloc>().add(const EventsEvent.loadEvents());
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
        body: BlocBuilder<EventsManagmentBloc, EventsState>(
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              const FilterChips(),
                              const SizedBox(height: 24),
                              const DatePickerFilter(),
                              state.maybeWhen(
                                loading: () => const Center(
                                  // TODO: Add skeletonizer
                                  child: CircularProgressIndicator(
                                    color: AppColors.primary,
                                  ),
                                ),
                                loaded: (events) =>
                                    AdminEventCardList(events: events),
                                orElse: () => const SizedBox.shrink(),
                              ),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
        drawer: const HomeScreenDrawer());
  }
}
