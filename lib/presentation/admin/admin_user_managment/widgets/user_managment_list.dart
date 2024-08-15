import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/presentation/admin/admin_user_managment/widgets/user_managment_tile.dart';

class UserManagmentList extends StatelessWidget {
  const UserManagmentList({
    super.key,
    required this.profiles,
  });

  final List<Profile> profiles;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: profiles.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          UserManagmentTile(profile: profiles[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
