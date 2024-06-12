import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/presentation/common/widgets/announcement_post.dart';

class AnnouncemetsList extends StatelessWidget {
  const AnnouncemetsList({
    super.key,
    required this.announcements,
    required this.isAdmin,
  });

  final List<Announcement> announcements;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => AnnouncementPost(
        annoucnement: announcements[index],
        isAdmin: isAdmin,
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: announcements.length,
      shrinkWrap: true,
    );
  }
}
