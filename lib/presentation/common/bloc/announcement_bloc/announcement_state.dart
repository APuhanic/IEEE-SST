part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.initial() = _Initial;
  const factory AnnouncementState.loading() = _Loading;
  const factory AnnouncementState.loaded(List<Announcement> announcements) =
      _Loaded;
  const factory AnnouncementState.error(String message) = _Error;
}
