part of 'announcement_bloc.dart';

@freezed
class AnnouncementEvent with _$AnnouncementEvent {
  const factory AnnouncementEvent.loadAnnouncements() = _LoadAnnouncements;
}