import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';
import 'package:ieee_sst/presentation/register/widgets/country_input.dart';
import 'package:ieee_sst/presentation/register/widgets/organization_input.dart';
import 'package:ieee_sst/presentation/register/widgets/position_input.dart';

class EditProfileDialog extends StatelessWidget {
  const EditProfileDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Profile'),
      backgroundColor: AppColors.background,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: OrganizationInput(),
          ),
          const PositionInput(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: CountryInput(),
          ),
          ElevatedButton(
            onPressed: () async {
              context
                  .read<RegistrationBloc>()
                  .add(const RegistrationEvent.updateUserInfo());
              await Future.delayed(const Duration(milliseconds: 200));
              if (!context.mounted) return;
              context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: Text(
              'Save',
              style: AppTextStyle.button,
            ),
          ),
        ],
      ),
    );
  }
}
