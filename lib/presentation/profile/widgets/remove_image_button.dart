import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/profile/bloc/profile_image_bloc.dart';

class RemoveImageButton extends StatelessWidget {
  const RemoveImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
      ),
      height: 40,
      width: 40,
      child: IconButton(
        onPressed: () => context
            .read<ProfileImageBloc>()
            .add(const ProfileImageEvent.removeImage()),
        icon: const Icon(
          Icons.close,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
