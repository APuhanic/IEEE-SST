import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({
    super.key,
  });

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
                  Text('Create event', style: AppTextStyle.header),
                  const SizedBox(height: 24),
                  FormField(
                    builder: (FormFieldState state) {
                      return TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Event name',
                        ),
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
