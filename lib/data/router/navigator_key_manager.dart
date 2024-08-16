import 'package:flutter/material.dart';

class NavigatorKeyManager {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorHomeKey');

  final GlobalKey<NavigatorState> shellNavigatorAgendaKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorAgendaKey');

  final GlobalKey<NavigatorState> shellNavigatorCommunityKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorCommunityKey');

  final GlobalKey<NavigatorState> shellNavigatorMessagesKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorMessagesKey');

  final GlobalKey<NavigatorState> shellNavigatorAttendeesKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorAttendeesKey');

  final GlobalKey<NavigatorState> shellNavigatorAdminHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorAdminHomeKey');

  final GlobalKey<NavigatorState> shellNavigatorAdminEventsManagmentKey =
      GlobalKey<NavigatorState>(
          debugLabel: 'ShellNavigatorAdminEventsManagmentKey');

  final GlobalKey<NavigatorState> shellNavigatorSponsorManagmentKey =
      GlobalKey<NavigatorState>(
          debugLabel: 'ShellNavigatorSponsorManagmentKey');

  final GlobalKey<NavigatorState> shellNavigatorAnnouncementsKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorAnnouncementsKey');

  final GlobalKey<NavigatorState> shellNavigatorSponsorsKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorSponsorsKey');

  final GlobalKey<NavigatorState> shellNavigatorAdminUserManagmentKey =
      GlobalKey<NavigatorState>(
          debugLabel: 'ShellNavigatorAdminUserManagmentKey');

  final GlobalKey<NavigatorState> shellNavigatorDocumentsKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorDocumentsKey');
}
