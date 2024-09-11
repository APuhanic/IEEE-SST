import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/profile/bloc/profile_image_bloc.dart';
import 'package:ieee_sst/presentation/profile/widgets/choose_image_button.dart';
import 'package:ieee_sst/presentation/profile/widgets/remove_image_button.dart';

class ProfileImageManagment extends StatelessWidget {
  const ProfileImageManagment({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileImageBloc, ProfileImageState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      state.image == null
                          ? CircleAvatar(
                              radius: 60,
                              backgroundImage: profile.imageUrl != null
                                  ? NetworkImage(profile.imageUrl!)
                                  : const AssetImage('assets/images/user.png')
                                      as ImageProvider,
                            )
                          : state.status.isInProgress
                              ? const LoadingIndicator()
                              : CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      FileImage(File(state.image!.path)),
                                ),
                      state.isChoosing
                          ? state.status.isInProgress
                              ? const SizedBox()
                              : const Positioned(
                                  bottom: -10,
                                  right: -10,
                                  child: RemoveImageButton(),
                                )
                          : const Positioned(
                              bottom: -10,
                              right: -10,
                              child: ChooseImageButton(),
                            ),
                    ],
                  ),
                ),
                !state.isChoosing
                    ? const SizedBox(height: 16)
                    : TextButton(
                        onPressed: () {
                          debugPrint('Save');
                          context
                              .read<ProfileImageBloc>()
                              .add(ProfileImageEvent.addProfileImage(profile));
                        },
                        child: Text(
                          'Save',
                          style: AppTextStyle.blueButtonText,
                        ),
                      ),
              ],
            ),
          ],
        );
      },
    );
  }
}
