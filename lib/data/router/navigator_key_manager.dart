import 'package:flutter/material.dart';

class NavigatorKeyManager {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'ShellNavigatorHomeKey');

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
}
