import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card_list.dart';
import 'package:ieee_sst/presentation/home/widgets/header.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/speaker_hub.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Header(),
                ),
                const SizedBox(height: 24),
                Text(
                  'IEEE SST Forum 2024',
                  style: AppTextStyle.header,
                ),
                const Text('Welcome to the IEEE SST Forum 2024'),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text('Ongoing', style: AppTextStyle.titleLarge),
                      Expanded(child: Container()),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View All',
                        ),
                      )
                    ],
                  ),
                ),
                const EventCardList(),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SpeakerHub(),
                ),
              ],
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}
