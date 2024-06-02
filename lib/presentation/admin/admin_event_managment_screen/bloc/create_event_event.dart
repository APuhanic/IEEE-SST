part of 'create_event_bloc.dart';

@freezed
class CreateEventEvent with _$CreateEventEvent {
  const factory CreateEventEvent.submitted() = _Submitted;
  const factory CreateEventEvent.eventNameChanged(String eventName) =
      _EventNameChanged;
  const factory CreateEventEvent.eventDescriptionChanged(
      String eventDescription) = _EventDescriptionChanged;
  const factory CreateEventEvent.eventDateChanged(DateTime? eventDate) =
      _EventDateChanged;
  const factory CreateEventEvent.eventTimeChanged(TimeOfDay? eventTime) =
      _EventTimeChanged;
  const factory CreateEventEvent.eventLocationChanged(String eventLocation) =
      _EventLocationChanged;
  const factory CreateEventEvent.eventSpeakerChanged(String eventSpeaker) =
      _EventSpeakerChanged;
}
