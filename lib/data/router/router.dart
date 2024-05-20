import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/router/navigator_key_manager.dart';
import 'package:ieee_sst/presentation/attendees/screens/attendees_screen.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/scaffold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/community/screens/community_screen.dart';
import 'package:ieee_sst/presentation/community/screens/organizer_announcements.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';
import 'package:ieee_sst/presentation/messages/screens/messages_screen.dart';
import 'package:ieee_sst/presentation/register/screens/register_screen.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppRouter {
  final NavigatorKeyManager _navigatorKeyManager;
  AppRouter(this._navigatorKeyManager);
  GoRouter get router => GoRouter(
        navigatorKey: _navigatorKeyManager.rootNavigatorKey,
        initialLocation: '/home',
        routes: [
          GoRoute(
            path: RoutePaths.login,
            pageBuilder: (context, state) => const MaterialPage(
              key: ValueKey('LoginScreen'),
              child: LoginScreen(),
            ),
          ),
          GoRoute(
            path: RoutePaths.register,
            pageBuilder: (context, state) => const MaterialPage(
              key: ValueKey('RegisterScreen'),
              child: RegisterScreen(),
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
                navigatorKey: _navigatorKeyManager.shellNavigatorHomeKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.home,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('HomeScreen'),
                      child: HomeScreen(),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _navigatorKeyManager.shellNavigatorMessagesKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.messages,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('MessagesScreen'),
                      child: MessagesScreen(),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _navigatorKeyManager.shellNavigatorCommunityKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.community,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('CommunityScreen'),
                      child: CommunityScreen(),
                    ),
                    routes: [
                      GoRoute(
                        path: RoutePaths.subRouteOrganizerAnnouncments,
                        pageBuilder: (context, state) => const MaterialPage(
                          key: ValueKey('OrganizerAnnouncements'),
                          child: OrganizerAnnouncements(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _navigatorKeyManager.shellNavigatorAttendeesKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.attendees,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('AttendeesScreen'),
                      child: AttendeesScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
