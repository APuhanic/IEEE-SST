part of 'announcement_bloc.dart';

@freezed
class AnnouncementManagmentState with _$AnnouncementManagmentState {
  const factory AnnouncementManagmentState.initial() = _Initial;
  const factory AnnouncementManagmentState.loading() = _Loading;
  const factory AnnouncementManagmentState.loaded(
      List<Announcement> announcements) = _Loaded;
  const factory AnnouncementManagmentState.error(String message) = _Error;
}
