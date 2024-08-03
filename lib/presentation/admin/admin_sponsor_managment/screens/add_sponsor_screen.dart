import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/add_sponsor_image_button.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/sponsor_name_input.dart';

class AddSponsorScreen extends StatelessWidget {
  const AddSponsorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SponsorFormBloc, SponsorFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            debugPrint('Sponsor added successfully');
            Navigator.pop(context);
          }
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }
        },
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Add Sponsor'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 24),
                  const SponsorNameInput(),
                  const AddSponsorImageButton(),
                  BlocBuilder<SponsorFormBloc, SponsorFormState>(
                    builder: (context, state) {
                      return state.image == null
                          ? const Text('No image selected')
                          : Image.file(File(state.image!.path));
                    },
                  ),
                  BlocBuilder<SponsorFormBloc, SponsorFormState>(
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
                        onPressed: () {
                          state.status.isInProgress
                              ? null
                              : context
                                  .read<SponsorFormBloc>()
                                  .add(const SponsorFormEvent.addSponsor());
                        },
                        child: state.status.isInProgress
                            ? const CircularProgressIndicator()
                            : const Text('Add Sponsor'),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
