part of 'create_event_bloc.dart';

@freezed
class CreateEventEvent with _$CreateEventEvent {
  const factory CreateEventEvent.submitted() = _Submitted;
  const factory CreateEventEvent.eventNameChanged(String eventName) =
      _EventNameChanged;
  const factory CreateEventEvent.eventDescriptionChanged(
      String eventDescription) = _EventDescriptionChanged;
}
