import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/admin_event_card.dart';
import 'package:ieee_sst/presentation/common/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/date_picker_filter.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/common/widgets/sliver_screen_header.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class EventManagmentScreen extends StatelessWidget {
  const EventManagmentScreen({super.key});

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
                  const SliverScreenHeader(title: 'Event Managment'),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _DatePickerHeaderDelegate(
                      child: Container(
                        color: AppColors.background,
                        child: const DatePickerFilter(),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: FilterChips(),
                        ),
                      ],
                    ),
                  ),
                  state.maybeWhen(
                    loading: () => const SliverFillRemaining(
                        child: Center(child: LoadingIndicator())),
                    loaded: (events) => events.isEmpty
                        ? const SliverFillRemaining(
                            child: Center(child: Text('No events found')))
                        : SliverPadding(
                            padding: const EdgeInsets.only(
                                bottom: 60.0, right: 16, left: 16),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: AdminEventCard(event: events[index]),
                                ),
                                childCount: events.length,
                              ),
                            ),
                          ),
                    orElse: () =>
                        const SliverFillRemaining(child: LoadingIndicator()),
                  ),
                ],
              ),
            );
          },
        ),
        drawer: const HomeScreenDrawer());
  }
}

class _DatePickerHeaderDelegate extends SliverPersistentHeaderDelegate {
  _DatePickerHeaderDelegate({required this.child});
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 90.0;

  @override
  double get minExtent => 90.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
