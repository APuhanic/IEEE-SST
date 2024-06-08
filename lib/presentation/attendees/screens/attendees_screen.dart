import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/attendees/widgets/attendees_search_bar.dart';
import 'package:ieee_sst/presentation/attendees/widgets/user_profile_tile_list.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';

class AttendeesScreen extends StatelessWidget {
  const AttendeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfiles());
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: AppColors.background,
          shadowColor: Colors.transparent,
          surfaceTintColor: AppColors.background,
          title: Text('Attendees', style: AppTextStyle.titleSmall),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
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
                        ),
                        const SizedBox(height: 16),
                        state.maybeWhen(
                          orElse: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          loadedProfiles: (profiles) => profiles.isEmpty
                              ? const Center(child: Text('No attendees found'))
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
    );
  }
}
