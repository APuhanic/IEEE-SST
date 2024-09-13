import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/presentation/admin/admin_user_managment/bloc/user_managment_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/attendees_bloc/attendees_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/user_tag_chip.dart';

class UserManagmentTile extends StatefulWidget {
  const UserManagmentTile({super.key, required this.profile});

  final Profile profile;

  @override
  State<UserManagmentTile> createState() => _UserManagmentTileState();
}

class _UserManagmentTileState extends State<UserManagmentTile> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserManagmentBloc, UserManagmentState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('User role updated successfully'),
            ),
          );
        }
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to update user role'),
            ),
          );
        }
      },
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.white,
              backgroundImage: widget.profile.imageUrl != null
                  ? NetworkImage(widget.profile.imageUrl!)
                  : const AssetImage('assets/images/user.png') as ImageProvider,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.profile.fullName,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  widget.profile.organization ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                UserTagChip(tag: widget.profile.role!),
              ],
            ),
            const Spacer(),
            Center(
              child: IconButton(
                  onPressed: () => _showEditDialog(context),
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.gray,
                  )),
            )
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String selectedRole = widget.profile.role!;
        return StatefulBuilder(
          builder: (context, setState) {
            return Theme(
              data: ThemeData.light().copyWith(
                colorScheme:
                    const ColorScheme.light(primary: AppColors.primary),
              ),
              child: AlertDialog(
                backgroundColor: AppColors.white,
                title: const Text('Edit user role'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RadioListTile<String>(
                      title: const Text('Admin'),
                      value: 'admin',
                      groupValue: selectedRole,
                      onChanged: (value) {
                        setState(() => selectedRole = value!);
                        context
                            .read<UserManagmentBloc>()
                            .add(UserManagmentEvent.roleChanged(selectedRole));
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('User'),
                      value: 'user',
                      groupValue: selectedRole,
                      onChanged: (value) {
                        setState(() => selectedRole = value!);
                        context.read<UserManagmentBloc>().add(
                              UserManagmentEvent.roleChanged(selectedRole),
                            );
                      },
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      context.read<UserManagmentBloc>().add(
                            UserManagmentEvent.updateRole(widget.profile.id),
                          );
                      context
                          .read<AttendeesBloc>()
                          .add(const AttendeesEvent.loadAttendees());
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
