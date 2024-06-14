import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/router/navigator_key_manager.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/screens/create_announcement_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/update_event_screen.dart';
import 'package:ieee_sst/presentation/admin/event_sponsor_managment/screens/sponsors_managment_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/create_event_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/screens/event_managment_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_home_screen/screens/admin_home_screen.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/screens/announcements_managment_screen.dart';
import 'package:ieee_sst/presentation/agenda/screens/agenda_screen.dart';
import 'package:ieee_sst/presentation/agenda/screens/search_events_screen.dart';
import 'package:ieee_sst/presentation/attendees/screens/attendees_screen.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/admin_scaffold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/widgets/scaffold_with_nav_bar.dart';
import 'package:ieee_sst/presentation/info/screens/announcement_post_screen.dart';
import 'package:ieee_sst/presentation/info/screens/info_screen.dart';
import 'package:ieee_sst/presentation/info/screens/organizer_announcements.dart';
import 'package:ieee_sst/presentation/info/screens/qa_screen.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';
import 'package:ieee_sst/presentation/messages/screens/messages_screen.dart';
import 'package:ieee_sst/presentation/register/screens/register_screen.dart';
import 'package:ieee_sst/presentation/register/screens/register_user_data_screen.dart';
import 'package:ieee_sst/presentation/register/screens/register_user_email_screen.dart';
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
          // Register routes -  Nested so the info can be preserved when going back
          GoRoute(
            path: RoutePaths.register,
            pageBuilder: (context, state) => const MaterialPage(
              key: ValueKey('RegisterScreen'),
              child: RegisterScreen(),
            ),
            routes: [
              GoRoute(
                path: RoutePaths.registerUserData,
                pageBuilder: (context, state) => const MaterialPage(
                  key: ValueKey('RegisterUserInfoScreen'),
                  child: RegisterUserDataScreen(),
                ),
                routes: [
                  GoRoute(
                    path: RoutePaths.registerEmail,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('RegisterUserEmailScreen'),
                      child: RegisterUserEmailScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Admin routes
          StatefulShellRoute.indexedStack(
            pageBuilder: (context, state, child) => NoTransitionPage(
              child: AdminScaffoldWtihNavBar(navigationShell: child),
            ),
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
                        path: RoutePaths.subRouteCreateEventName,
                        pageBuilder: (context, state) => const MaterialPage(
                          key: ValueKey('CreateEventScreen'),
                          child: CreateEventScreen(),
                        ),
                      ),
                      GoRoute(
                        path: RoutePaths.subRouteUpdateEvent,
                        pageBuilder: (context, state) => const MaterialPage(
                          key: ValueKey('UpdateEventScreen'),
                          child: UpdateEventScreen(),
                        ),
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
                      routes: [
                        GoRoute(
                          path: RoutePaths.subRouteCreateAnnouncement,
                          pageBuilder: (context, state) => const MaterialPage(
                            key: ValueKey('CreateAnnouncementScreen'),
                            child: CreateAnnouncementScreen(),
                          ),
                        )
                      ])
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
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _navigatorKeyManager.shellNavigatorCommunityKey,
                routes: [
                  GoRoute(
                    path: RoutePaths.info,
                    pageBuilder: (context, state) => const MaterialPage(
                      key: ValueKey('InfoScreen'),
                      child: InfoScreen(),
                    ),
                    routes: [
                      GoRoute(
                          path: RoutePaths.subRouteOrganizerAnnouncments,
                          pageBuilder: (context, state) => const MaterialPage(
                                key: ValueKey('OrganizerAnnouncements'),
                                child: OrganizerAnnouncements(),
                              ),
                          routes: [
                            GoRoute(
                              path: RoutePaths.subRouteAnnouncementPost,
                              pageBuilder: (context, state) {
                                final announcement =
                                    state.extra as Announcement;
                                return MaterialPage(
                                  key: const ValueKey('AnnounementPostScreen'),
                                  child: AnnouncementPostScreen(
                                      announcement: announcement),
                                );
                              },
                            ),
                          ]),
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
