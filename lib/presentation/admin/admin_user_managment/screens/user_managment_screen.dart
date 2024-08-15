import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_user_managment/widgets/user_managment_list.dart';
import 'package:ieee_sst/presentation/attendees/widgets/attendees_search_bar.dart';
import 'package:ieee_sst/presentation/common/bloc/attendees_bloc/attendees_bloc.dart';

class UserManagmentScreen extends StatelessWidget {
  const UserManagmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AttendeesBloc>().add(const AttendeesEvent.loadAttendees());
    return Scaffold(
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
                              orElse: () => const Center(
                                  child: CircularProgressIndicator()),
                              loaded: (profiles) => profiles.isEmpty
                                  ? const Center(child: Text('No users found'))
                                  : UserManagmentList(profiles: profiles),
                            )
                          ],
                        ),
                      ),
                    ],
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
