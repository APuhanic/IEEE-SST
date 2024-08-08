part of 'event_form_bloc.dart';

//TODO: Simplyfy names
@freezed
class EventFormEvent with _$EventFormEvent {
  const factory EventFormEvent.createEvent() = _CreateEvent;
  const factory EventFormEvent.updateEvent() = _UpdateEvent;
  const factory EventFormEvent.setInitialValues(Event event) =
      _SetInitialValues;
  const factory EventFormEvent.eventNameChanged(String name) =
      _EventNameChanged;
  const factory EventFormEvent.eventDescriptionChanged(
      String eventDescription) = _EventDescriptionChanged;

  const factory EventFormEvent.eventStartTimeChanged(DateTime? startTime) =
      _EventStartTimeChanged;
  const factory EventFormEvent.eventEndTimeChanged(DateTime? endTime) =
      _EventEndTimeChanged;
  const factory EventFormEvent.eventDateChanged(DateTime? date) =
      _EventDateChanged;
  const factory EventFormEvent.eventLocationChanged(String location) =
      _EventLocationChanged;
  const factory EventFormEvent.eventSpeakerChanged(String speaker) =
      _EventSpeakerChanged;
  const factory EventFormEvent.eventInfoChanged(String info) =
      _EventInfoChanged;
}
