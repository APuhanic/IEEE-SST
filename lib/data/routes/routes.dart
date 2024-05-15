import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/presentation/community/screens/community_screen.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorHomeKey');

GoRouter router = GoRouter(
  initialLocation: '/community',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
        key: ValueKey('HomeScreen'),
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => const MaterialPage(
        key: ValueKey('LoginScreen'),
        child: LoginScreen(),
      ),
    ),
    GoRoute(
        path: '/community',
        pageBuilder: (context, state) => const MaterialPage(
              key: ValueKey('CommunityScreen'),
              child: CommunityScreen(),
            ))
  ],
);
