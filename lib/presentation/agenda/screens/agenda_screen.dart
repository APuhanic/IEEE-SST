import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card.dart';
import 'package:ieee_sst/presentation/common/widgets/event_filter_chips.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/date_picker_filter.dart';
import 'package:ieee_sst/presentation/common/widgets/global_refresh_indicator.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
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
          // TODO: Global refresh indicator
          return GlobalRefreshIndicator(
            onRefresh: () async => context
                .read<EventsManagmentBloc>()
                .add(const EventsEvent.loadEvents()),
            child: CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  expandedHeight: 40.0,
                  floating: true,
                  title: Text('Agenda'),
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  snap: true,
                ),
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
                  orElse: () => const SliverFillRemaining(
                      child: Center(child: LoadingIndicator())),
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
                                child: EventCard(event: events[index]),
                              ),
                              childCount: events.length,
                            ),
                          ),
                        ),
                )
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
