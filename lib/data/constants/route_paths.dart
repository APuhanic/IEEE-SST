abstract class RoutePaths {
  // Auth
  static const String login = '/';
  static const String register = '/register';

  static const String registerEmail = 'email';
  static const String registerUserData = 'user_data';
  static const String resetPassword = '/reset-password';

  // User
  static const String home = '/home';
  static const String conferenceChairsSubRoute = 'conference_chairs';
  static const String steeringCommitteeSubRoute = 'steering_committee';
  static const String programCommitteeSubRoute = 'program_committee';
  static const String keynoteSpeakerSubRoute = 'keynote_speaker';
  static const String specialSessionsSubRoute = 'special_sessions';
  static const String phdForumSubRoute = 'phd_forum';

  static const String profile = '/profile';
  static const String agenda = '/agenda';
  static const String searchEvents = 'search_events';
  static const String messages = '/messages';

  // Info
  static const String info = '/info';
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
  static const String sponsors = 'sponsors';

  static const String adminAttendees = '/admin_attendees';

  // Announcements
  static const String adminAnnouncements = '/admin_announcements';
  static const String subRouteCreateAnnouncement = 'create_announcement';
  static const String subRouteUpdateAnnouncement = 'update_announcement';

  static const String adminEventsMangment = '/admin_events_managment';
  static const String subRouteCreateEventName = 'event_name';
  static const String subRouteUpdateEvent = 'update_event';

  // User Managment
  static const String adminUserManagment = '/admin_user_managment';

  // Documents
  static const String documents = 'documents';
  static const String subRouteUploadDocument = 'upload_document';
}
