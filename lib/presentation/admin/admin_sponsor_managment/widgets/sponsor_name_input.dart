import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart';

class SponsorNameInput extends StatelessWidget {
  const SponsorNameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SponsorFormBloc, SponsorFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (eventName) => context
              .read<SponsorFormBloc>()
              .add(SponsorFormEvent.nameChanged(eventName)),
          initialValue: state.name,
          decoration: InputDecoration(
            label: Text('Sponsor name', style: AppTextStyle.textForm),
            hintText: 'Sponsor name',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.event, color: AppColors.grayText),
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
