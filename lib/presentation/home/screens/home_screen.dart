import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/ongoing_events.dart';
import 'package:ieee_sst/presentation/home/widgets/speaker_hub.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<EventsManagmentBloc>().add(const EventsEvent.loadEvents());
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        scrollBehavior: const MaterialScrollBehavior(),
        slivers: <Widget>[
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return SliverAppBar(
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
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      state.maybeWhen(
                        loadedProfile: (profile) => profile.fullName,
                        error: (message) => message,
                        orElse: () => 'Loading...',
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Text('Ongoing', style: AppTextStyle.titleLarge),
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
      drawer: const HomeScreenDrawer(),
    );
  }
}
