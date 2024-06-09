part of 'attendees_bloc.dart';

@freezed
class AttendeesState with _$AttendeesState {
  const factory AttendeesState.initial() = _Initial;
  const factory AttendeesState.loading() = _Loading;
  const factory AttendeesState.loaded(List<Profile> attendees) = _Loaded;
  const factory AttendeesState.error(String message) = _Error;
}
