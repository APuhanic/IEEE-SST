import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_user_managment/widgets/user_managment_tile.dart';
import 'package:ieee_sst/presentation/common/bloc/attendees_bloc/attendees_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class UserManagmentScreen extends StatelessWidget {
  const UserManagmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AttendeesBloc>().add(const AttendeesEvent.loadAttendees());
    return Scaffold(
      drawer: const HomeScreenDrawer(),
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<AttendeesBloc>()
            .add(const AttendeesEvent.loadAttendees()),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('User managment'),
            ),
            BlocBuilder<AttendeesBloc, AttendeesState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SliverFillRemaining(
                    child: Center(child: LoadingIndicator()),
                  ),
                  loaded: (profiles) => profiles.isEmpty
                      ? const SliverFillRemaining(
                          child: Center(child: Text('No users found')),
                        )
                      : SliverPadding(
                          padding: const EdgeInsets.only(
                              bottom: 40.0, right: 16, left: 16),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: UserManagmentTile(
                                      profile: profiles[index]),
                                );
                              },
                              childCount: profiles.length,
                            ),
                          ),
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
