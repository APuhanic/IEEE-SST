import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/event_sponsor_managment/bloc/sponsor_form_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddSponsorImageButton extends StatelessWidget {
  const AddSponsorImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SponsorFormBloc, SponsorFormState>(
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.white,
            textStyle: AppTextStyle.button,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () async {
            final image =
                await ImagePicker().pickImage(source: ImageSource.gallery);
            if (image == null) return;
            // TODO: Remove mounted check
            if (context.mounted) {
              context
                  .read<SponsorFormBloc>()
                  .add(SponsorFormEvent.imageChanged(image));
            }
          },
          child: const Text('Add image'),
        );
      },
    );
  }
}
