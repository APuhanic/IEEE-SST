import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:ieee_sst/data/router/navigator_key_manager.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/screens/announcements_managment_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/create_event_description_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/create_event_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/event_managment_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_home_screen/screens/admin_home_screen.dart';
import 'package:ieee_sst/presentation/admin/event_sponsor_managment/screens/sponsor_managment_screen.dart';
import 'package:ieee_sst/presentation/agenda/screens/agenda_screen.dart';
import 'package:ieee_sst/presentation/agenda/screens/search_events_screen.dart';
import 'package:ieee_sst/presentation/attendees/screens/attendees_screen.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/admin_scaffold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/scaffold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/community/screens/community_screen.dart';
import 'package:ieee_sst/presentation/community/screens/organizer_announcements.dart';
import 'package:ieee_sst/presentation/community/screens/qa_screen.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';
import 'package:ieee_sst/presentation/messages/screens/messages_screen.dart';
import 'package:ieee_sst/presentation/register/screens/register_screen.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class AppRouter {
  AppRouter(
    this._navigatorKeyManager,
    this._supabaseClient,
  );
  final NavigatorKeyManager _navigatorKeyManager;
  final SupabaseClient _supabaseClient;

  GoRouter get router => GoRouter(
        navigatorKey: _navigatorKeyManager.rootNavigatorKey,
        initialLocation: getInitialRoute(),
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
          // Admin routes
          StatefulShellRoute.indexedStack(
            pageBuilder: (context, state, child) {
              return NoTransitionPage(
                child: AdminScaffoldWtihNavBar(navigationShell: child),
              );
            },
            branches: [
              StatefulShellBranch(
                navigatorKey: _navigatorKeyManager.shellNavigatorAdminHomeKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.adminHomeScreen,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('AdminHomeScreen'),
                      child: AdminHomeScreen(),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey:
                    _navigatorKeyManager.shellNavigatorAdminEventsManagmentKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.adminEventsMangment,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('AdminEventsManagmentScreen'),
                      child: EventManagmentScreen(),
                    ),
                    routes: [
                      GoRoute(
                        path: RoutePaths.subRouteCreateNameEvent,
                        pageBuilder: (context, state) => const MaterialPage(
                          key: ValueKey('CreateEventScreen'),
                          child: CreateEventNameScreen(),
                        ),
                        routes: [
                          GoRoute(
                            path: RoutePaths.subRouteCreateDescriptionEvent,
                            pageBuilder: (context, state) => const MaterialPage(
                              key: ValueKey('EditEventScreen'),
                              child: CreateEventDescriptionScreen(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              StatefulShellBranch(
                navigatorKey:
                    _navigatorKeyManager.shellNavigatorSponsorManagmentKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.adminSponsors,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('AdminSponsorsScreen'),
                      child: SponsorManagmentScreen(),
                    ),
                  )
                ],
              ),
              StatefulShellBranch(
                navigatorKey:
                    _navigatorKeyManager.shellNavigatorAnnouncementsKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.adminAnnouncements,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('AdminAnnouncementsScreen'),
                      child: AnnouncementsManagmentScreen(),
                    ),
                  )
                ],
              )
            ],
          ),

          // User routes
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
                  navigatorKey: _navigatorKeyManager.shellNavigatorAgendaKey,
                  routes: [
                    GoRoute(
                        path: RoutePaths.agenda,
                        pageBuilder: (context, state) => const MaterialPage(
                              key: ValueKey('AgendaScreen'),
                              child: AgendaScreen(),
                            ),
                        routes: [
                          GoRoute(
                            path: RoutePaths.searchEvents,
                            pageBuilder: (context, state) => const MaterialPage(
                              key: ValueKey('SearchEventsScreen'),
                              child: SearchEventsScreen(),
                            ),
                          ),
                        ]),
                  ]),
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
                      GoRoute(
                        path: RoutePaths.subRouteAskOrganizers,
                        pageBuilder: (context, state) => const MaterialPage(
                          key: ValueKey('AskOrganizers'),
                          child: QaScreen(),
                        ),
                      )
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

  String getInitialRoute() {
    final Session? session = _supabaseClient.auth.currentSession;
    if (session == null || session.isExpired) {
      return RoutePaths.login;
    }
    if (session.user.userMetadata!['role'] == UserRoles.admin) {
      return RoutePaths.adminHomeScreen;
    }
    return RoutePaths.home;
  }
}
