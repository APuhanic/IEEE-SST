import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_date_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_description_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_info_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_location_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_name_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_speaker_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_time_input.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<EventFormBloc, EventFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            debugPrint('Event created successfully');
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
        builder: (context, state) {
          return CustomScrollView(slivers: [
            SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Create event', style: AppTextStyle.titleSmall),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const EventNameInput(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: EventDescriptionInput(),
                      ),
                      const EventLocationInput(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: Row(
                          children: [
                            EventDateInput(),
                            SizedBox(width: 16),
                            EventTimeInput(),
                          ],
                        ),
                      ),
                      const EventSpeakerInput(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: EventInfoInput(),
                      ),
                      // TODO: Extract widget and add validation
                      ElevatedButton(
                        onPressed: () {
                          context.read<EventFormBloc>().add(
                                const EventFormEvent.createEvent(),
                              );
                        },
                        child: const Text('Create event'),
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
