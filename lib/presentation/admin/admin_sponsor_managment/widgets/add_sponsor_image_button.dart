import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddSponsorImageButton extends StatelessWidget {
  const AddSponsorImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SponsorFormBloc, SponsorFormState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          width: double.infinity,
          height: 200,
          child: FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.background,
              foregroundColor: AppColors.grayText,
              textStyle: AppTextStyle.button,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: AppColors.grayText)),
            ),
            onPressed: () async {
              final image =
                  await ImagePicker().pickImage(source: ImageSource.gallery);
              if (image == null) return;
              if (context.mounted) {
                context
                    .read<SponsorFormBloc>()
                    .add(SponsorFormEvent.imageChanged(image));
              }
            },
            child: const Icon(
              Icons.add_a_photo,
              color: AppColors.grayText,
            ),
          ),
        );
      },
    );
  }
}
