import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_date_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_description_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_end_time_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_info_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_location_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_name_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_speaker_input.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/widgets/event_start_time_input.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<EventFormBloc, EventFormState>(
        listener: (context, state) {
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
            const SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Create event'),
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
                            Expanded(child: EventStartTimeInput()),
                            SizedBox(width: 16),
                            Expanded(child: EventEndTimeInput()),
                          ],
                        ),
                      ),
                      const EventDateInput(),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: EventSpeakerInput(),
                      ),
                      const EventInfoInput(),
                      const SizedBox(height: 24),
                      // TODO: Extract widget and add validation
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.white,
                          textStyle: AppTextStyle.button,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          context.read<EventFormBloc>().add(
                                const EventFormEvent.createEvent(),
                              );
                          context.read<EventsManagmentBloc>().add(
                                const EventsEvent.loadEvents(),
                              );
                          Navigator.pop(context);
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
