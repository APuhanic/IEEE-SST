import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/widgets/announcement_description_input.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/widgets/announcement_title_input.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/sliver_screen_header.dart';

class CreateAnnouncementScreen extends StatelessWidget {
  const CreateAnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnnouncementFormBloc, AnnouncementFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            Navigator.pop(context);
            context
                .read<AnnouncementFormBloc>()
                .add(const AnnouncementFormEvent.resetFrom());
            context
                .read<AnnouncementManagmentBloc>()
                .add(const AnnouncementManagmentEvent.loadAnnouncements());
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
        builder: (context, state) {
          return CustomScrollView(slivers: [
            const SliverScreenHeader(title: 'Create announcement'),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const AnnoucementTitleInput(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: AnnouncementDescriptionInput(),
                      ),
                      // TODO: Extract widget and add validation
                      FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.white,
                            textStyle: AppTextStyle.button),
                        onPressed: () {
                          context.read<AnnouncementFormBloc>().add(
                              const AnnouncementFormEvent.createAnnouncement());
                        },
                        child: const Text('Post Announcement'),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ]);
        },
      ),
    );
  }
}
