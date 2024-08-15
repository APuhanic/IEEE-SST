import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/bottom_nav_bar.dart';

class AdminScaffoldWtihNavBar extends StatelessWidget {
  const AdminScaffoldWtihNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<EventFormBloc>(),
        child: navigationShell,
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavBar(
        key: const ValueKey('BottomNavBar'),
        tabs: const ['Home', 'Event', 'Sponsors', 'Announcements', 'Users'],
        icons: const [
          Icons.home,
          Icons.event,
          Icons.handshake,
          Icons.announcement,
          Icons.people,
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
