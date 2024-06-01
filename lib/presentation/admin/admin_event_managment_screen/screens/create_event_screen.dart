import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/create_event_bloc.dart';

class CreateEventNameScreen extends StatelessWidget {
  const CreateEventNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<CreateEventBloc>(),
        child: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: 40.0,
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text('Create event', style: AppTextStyle.titleSmall),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    context.go(
                        '/admin_events_managment/event_name/event_description');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary),
                  child: Text('Next', style: AppTextStyle.button),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    BlocBuilder<CreateEventBloc, CreateEventState>(
                      builder: (context, state) {
                        return TextFormField(
                          onChanged: (eventName) {
                            context.read<CreateEventBloc>().add(
                                  CreateEventEvent.eventNameChanged(eventName),
                                );
                          },
                          decoration: InputDecoration(
                            hintText: 'Event name',
                            hintStyle: AppTextStyle.textForm,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: AppColors.white,
                            filled: true,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: () {
                        //SupabaseApi().addEvent();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary),
                      child: Text('ADD EVENT TEST', style: AppTextStyle.button),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
