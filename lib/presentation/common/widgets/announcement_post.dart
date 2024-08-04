import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/util/time_ago_util.dart';

class AnnouncementPost extends StatelessWidget {
  const AnnouncementPost({
    super.key,
    required this.announcement,
    required this.isAdmin,
  });

  final Announcement announcement;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) {
    // TODO: Add announcement edit and delete?
    return GestureDetector(
      onTap: () {
        context.go(
          '/community/organizer_announcements/announcement_post',
          extra: announcement,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${announcement.fullName} • ${formatTimeAgo(announcement.timeposted)} ',
                        style: AppTextStyle.lightText),
                    Text(announcement.title, style: AppTextStyle.titleSmall),
                    Text(
                      announcement.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              isAdmin
                  ? PopupMenuButton(
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: const Text('Edit'),
                          onTap: () {
                            context.read<AnnouncementFormBloc>().add(
                                AnnouncementFormEvent.setInitialValues(
                                    announcement));
                            context
                                .go('/admin_announcements/update_announcement');
                          },
                        ),
                        PopupMenuItem(
                          child: const Text('Delete'),
                          onTap: () {
                            context.read<AnnouncementBloc>().add(
                                AnnouncementEvent.deleteAnnouncement(
                                    announcement.id!));
                          },
                        )
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
