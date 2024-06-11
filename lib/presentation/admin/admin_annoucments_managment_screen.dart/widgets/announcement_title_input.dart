import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart';

class AnnoucementTitleInput extends StatelessWidget {
  const AnnoucementTitleInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementFormBloc, AnnouncementFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (announcementTitle) => context
              .read<AnnouncementFormBloc>()
              .add(AnnouncementFormEvent.titleChanged(announcementTitle)),
          initialValue: state.title,
          decoration: InputDecoration(
            label: Text('Announcement title', style: AppTextStyle.textForm),
            hintText: 'Announcement title',
            hintStyle: AppTextStyle.textForm,
            prefixIcon:
                const Icon(Icons.announcement, color: AppColors.grayText),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
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
