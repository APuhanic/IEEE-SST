import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      body: navigationShell,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavBar(
        key: const ValueKey('BottomNavBar'),
        tabs: const ['Home', 'Event', 'Sponsors', 'Announcements'],
        icons: const [
          Icons.home,
          Icons.event,
          Icons.handshake,
          Icons.announcement,
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
