import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class CreateEventNameScreen extends StatelessWidget {
  const CreateEventNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const _CreateEventHeader(),
                  const SizedBox(height: 24),
                  FormField(
                    builder: (FormFieldState state) {
                      return Column(
                        children: [
                          TextFormField(
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
                          ),
                          const SizedBox(height: 24),
                          FilledButton(
                            onPressed: () {
                              SupabaseApi().addEvent();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary),
                            child: Text('ADD EVENT TEST',
                                style: AppTextStyle.button),
                          ),
                          FilledButton(
                            onPressed: () {
                              SupabaseApi().fetchEvents();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary),
                            child: Text('GET EVENT TEST',
                                style: AppTextStyle.button),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}

class _CreateEventHeader extends StatelessWidget {
  const _CreateEventHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.close),
        ),
        Text('Create event', style: AppTextStyle.titleSmall),
        ElevatedButton(
          onPressed: () => context
              .go('/admin_events_managment/event_name/event_description'),
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
          child: Text('Next', style: AppTextStyle.button),
        ),
      ],
    );
  }
}
