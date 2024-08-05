abstract class RoutePaths {
  // Auth
  static const String login = '/';
  static const String register = '/register';

  static const String registerEmail = 'email';
  static const String registerUserData = 'user_data';

  // User
  static const String home = '/home';
  static const String profile = '/profile';
  static const String agenda = '/agenda';
  static const String searchEvents = 'search_events';
  static const String messages = '/messages';

  // Community
  //TODO: change to info
  static const String info = '/community';
  static const String subRouteOrganizerAnnouncments = 'organizer_announcements';
  static const String subRouteAnnouncementPost = 'announcement_post';

  static const String subRouteAskOrganizers = 'ask_organizers';
  static const String subRouteCreateQuestion = 'create_question';
  static const String subRouteUserPost = 'user_post';

  static const String attendees = '/attendees';

  // Admin
  static const String adminHomeScreen = '/admin_home_screen';

  // Sponsors
  static const String adminSponsors = '/admin_sponsors';
  static const String subRouteAddSponsor = 'add_sponsor';
  static const String sponsors = '/sponsors';

  static const String adminAttendees = '/admin_attendees';

  // Announcements
  static const String adminAnnouncements = '/admin_announcements';
  static const String subRouteCreateAnnouncement = 'create_announcement';
  static const String subRouteUpdateAnnouncement = 'update_announcement';

  static const String adminEventsMangment = '/admin_events_managment';
  static const String subRouteCreateEventName = 'event_name';
  static const String subRouteUpdateEvent = 'update_event';
}
