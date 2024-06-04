part of 'event_form_bloc.dart';

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
  const factory EventFormEvent.eventDateChanged(DateTime? time) =
      _EventDateChanged;
  const factory EventFormEvent.eventTimeChanged(TimeOfDay? time) =
      _EventTimeChanged;
  const factory EventFormEvent.eventLocationChanged(String location) =
      _EventLocationChanged;
  const factory EventFormEvent.eventSpeakerChanged(String speaker) =
      _EventSpeakerChanged;
}
