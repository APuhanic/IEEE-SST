import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/attendees/widgets/user_profile_tile_list.dart';
import 'package:ieee_sst/presentation/common/bloc/attendees_bloc/attendees_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class AttendeesScreen extends StatelessWidget {
  const AttendeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AttendeesBloc>()
        ..add(
          const AttendeesEvent.loadAttendees(),
        ),
      child: Scaffold(
        drawer: const HomeScreenDrawer(),
        body: CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text('Attendees'),
          ),
          BlocBuilder<AttendeesBloc, AttendeesState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          /*Row(
                            children: [
                              const AttendeesSearchBar(),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.filter_list,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),*/
                          const SizedBox(height: 16),
                          state.maybeWhen(
                            orElse: () {
                              return const Center(
                                child: LoadingIndicator(),
                              );
                            },
                            loaded: (profiles) => profiles.isEmpty
                                ? const Center(
                                    child: Text('No attendees found'))
                                : UserProfileTileList(profiles: profiles),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}
