import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/date_picker_filter.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card_list.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EventsManagmentBloc>().add(const EventsEvent.loadEvents());
    return Scaffold(
      drawer: const HomeScreenDrawer(),
      body: BlocBuilder<EventsManagmentBloc, EventsState>(
        builder: (context, state) {
          //TODO: Reset filters on refresh
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<EventsManagmentBloc>()
                  .add(const EventsEvent.loadEvents());
            },
            child: CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  expandedHeight: 40.0,
                  floating: true,
                  title: Text('Agenda'),
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  /*actions: [
                    IconButton(
                      onPressed: () => context.go('/agenda/search_events'),
                      icon: const Icon(Icons.search),
                    ),
                  ],*/
                  snap: true,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  // TODO: Extract to a separate widget
                  delegate: _DatePickerHeaderDelegate(
                    child: Container(
                      color: AppColors.background,
                      child: const DatePickerFilter(),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: FilterChips(),
                          ),
                          state.maybeWhen(
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            loaded: (events) => Column(
                              children: [
                                EventCardList(events: events),
                              ],
                            ),
                            orElse: () => const SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
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
