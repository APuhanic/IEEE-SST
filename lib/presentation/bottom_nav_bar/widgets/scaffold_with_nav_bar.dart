import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/bottom_nav_bar.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.navigationShell,
  });

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
        tabs: const ['Home', 'Agenda', 'Info', 'Attendees', 'Messages'],
        icons: const [
          Icons.home,
          Icons.calendar_today,
          Icons.info_outline_rounded,
          FontAwesomeIcons.peopleRoof,
          Icons.message,
        ],
        onDestinationSelected: _goBranch,
      ),
      extendBody: true,
    );
  }
}
