part of 'announcement_bloc.dart';

@freezed
class AnnouncementManagmentEvent with _$AnnouncementManagmentEvent {
  const factory AnnouncementManagmentEvent.loadAnnouncements() =
      _LoadAnnouncements;
  const factory AnnouncementManagmentEvent.deleteAnnouncement(
      String announcementId) = _DeleteAnnouncement;
}
