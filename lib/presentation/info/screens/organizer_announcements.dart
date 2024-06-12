import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/announcements_list.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text(
              'Announcements',
              style: AppTextStyle.titleSmall,
            ),
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
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (message) => Center(
                        child: Text(message),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
