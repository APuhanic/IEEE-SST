import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/ongoing_events.dart';
import 'package:ieee_sst/presentation/home/widgets/speaker_hub.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<EventsManagmentBloc>().add(const EventsEvent.loadEvents());

    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          scrollBehavior: const MaterialScrollBehavior(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 40.0,
              floating: true,
              snap: true,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('IEEE SST', style: AppTextStyle.titleSmall),
              leading: Builder(
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: const Icon(
                        Icons.menu,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_2_rounded),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    const SizedBox(height: 24),
                    const Text('Welcome to the IEEE SST Forum 2024'),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Text('Ongoing', style: AppTextStyle.titleLarge),
                          Expanded(child: Container()),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                            ),
                          )
                        ],
                      ),
                    ),
                    BlocBuilder<EventsManagmentBloc, EventsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (events) => OngoingEvents(events: events),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SpeakerHub(),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}
