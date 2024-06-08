import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/presentation/attendees/widgets/user_profile_tile.dart';

class UserProfileTileList extends StatelessWidget {
  const UserProfileTileList({
    super.key,
    required this.profiles,
  });

  final List<Profile> profiles;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: profiles.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          UserProfileTile(profile: profiles[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
