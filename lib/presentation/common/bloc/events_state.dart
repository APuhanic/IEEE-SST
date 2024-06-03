part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial() = _Initial;
  const factory EventsState.loading() = _Loading;
  const factory EventsState.loaded(List<Event> events) = _Loaded;
  const factory EventsState.error(String message) = _Error;
}
