import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/add_sponsor_image_button.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/sponsor_name_input.dart';
import 'package:ieee_sst/presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: SponsorNameInput(),
                    ),
                    BlocBuilder<SponsorFormBloc, SponsorFormState>(
                      builder: (context, state) {
                        return state.image == null
                            ? const AddSponsorImageButton()
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade200,
                                      ),
                                      clipBehavior: Clip.hardEdge,
                                      child: Image.file(
                                        File(state.image!.path),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: GestureDetector(
                                        onTap: () {
                                          context.read<SponsorFormBloc>().add(
                                              const SponsorFormEvent
                                                  .removeImage());
                                        },
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black54,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                      },
                    ),
                    BlocBuilder<SponsorFormBloc, SponsorFormState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: ElevatedButton(
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
                              context.read<SponsorManagmentBloc>().add(
                                  const SponsorManagmentEvent.loadSponsors());
                              Navigator.pop(context);
                            },
                            child: state.status.isInProgress
                                ? const CircularProgressIndicator()
                                : const Text('Add Sponsor'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
