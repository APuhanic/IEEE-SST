import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/scaffhold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/community/screens/community_screen.dart';
import 'package:ieee_sst/presentation/community/screens/organizer_announcements.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';
import 'package:ieee_sst/presentation/messages/screens/messages_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorHomeKey');
final _shellNavigatorCommunityKey =
    GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorCommunityKey');
final _shellNavigatorMessagesKey =
    GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorMessagesKey');
final _shellNavigatorAttendeesKey =
    GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorAttendeesKey');

GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
        key: ValueKey('LoginScreen'),
        child: LoginScreen(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: ScaffoldWithNavBar(navigationShell: child),
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) => const MaterialPage(
                key: ValueKey('HomeScreen'),
                child: HomeScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorMessagesKey,
          routes: [
            GoRoute(
              path: '/messages',
              pageBuilder: (context, state) => const MaterialPage(
                key: ValueKey('MessagesScreen'),
                child: MessagesScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCommunityKey,
          routes: [
            GoRoute(
              path: '/community',
              pageBuilder: (context, state) => const MaterialPage(
                key: ValueKey('CommunityScreen'),
                child: CommunityScreen(),
              ),
              routes: [
                GoRoute(
                  path: 'organizer_announcements',
                  pageBuilder: (context, state) => const MaterialPage(
                    key: ValueKey('OrganizerAnnouncements'),
                    child: OrganizerAnnouncements(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
