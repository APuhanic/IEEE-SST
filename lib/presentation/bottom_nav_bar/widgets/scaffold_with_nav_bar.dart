import 'package:flutter/material.dart';
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
        onDestinationSelected: _goBranch,
      ),
      extendBody: true,
    );
  }
}
