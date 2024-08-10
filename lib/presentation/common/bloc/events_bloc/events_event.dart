part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.loadEvents() = _LoadEvents;
  const factory EventsEvent.addEvent(Event event) = _AddEvent;
  const factory EventsEvent.deleteEvent(Event event) = _DeleteEvent;
  const factory EventsEvent.updateEvent(Event event) = _UpdateEvent;
  const factory EventsEvent.markGoing(Event event) = _MarkGoing;
  const factory EventsEvent.markNotGoing(Event event) = _MarkNotGoing;
  const factory EventsEvent.filterEvents({DateTime? date, FilterType? filter}) =
      _FilterEvents;
}
