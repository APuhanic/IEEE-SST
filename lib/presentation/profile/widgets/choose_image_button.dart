import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/profile/bloc/profile_image_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ChooseImageButton extends StatelessWidget {
  const ChooseImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image == null) return;
        if (!context.mounted) return;
        context
            .read<ProfileImageBloc>()
            .add(ProfileImageEvent.imageChanged(image));
      },
      icon: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
        ),
        height: 40,
        width: 40,
        child: const Icon(
          Icons.add_a_photo,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
