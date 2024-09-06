import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/announcements_list.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';

class OrganizerAnnouncements extends StatelessWidget {
  const OrganizerAnnouncements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<AnnouncementBloc>()
        .add(const AnnouncementEvent.loadAnnouncements());
    return Scaffold(
      body: RefreshIndicator(
        backgroundColor: AppColors.white,
        color: AppColors.primary,
        onRefresh: () async => context
            .read<AnnouncementBloc>()
            .add(const AnnouncementEvent.loadAnnouncements()),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Announcements'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BlocBuilder<AnnouncementBloc, AnnouncementState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: (announcements) => AnnouncemetsList(
                          announcements: announcements,
                          isAdmin: false,
                        ),
                        loading: () => const Center(child: LoadingIndicator()),
                        error: (message) => Center(child: Text(message)),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
