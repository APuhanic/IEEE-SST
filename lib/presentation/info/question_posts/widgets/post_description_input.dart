import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart';

class PostDescriptionInput extends StatelessWidget {
  const PostDescriptionInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementFormBloc, AnnouncementFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (description) {
            context
                .read<AnnouncementFormBloc>()
                .add(AnnouncementFormEvent.descriptionChanged(description));
          },
          initialValue: state.description,
          minLines: 1,
          maxLines: 10,
          decoration: InputDecoration(
            label: Text('Post description', style: AppTextStyle.textForm),
            hintText: 'Post description',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.description_outlined,
                color: AppColors.grayText),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.grayText,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primary, width: 2.0),
            ),
          ),
        );
      },
    );
  }
}
