part of 'event_form_bloc.dart';

@freezed
class EventFormEvent with _$EventFormEvent {
  const factory EventFormEvent.createEvent() = _CreateEvent;
  const factory EventFormEvent.updateEvent() = _UpdateEvent;
  const factory EventFormEvent.setInitialValues(Event event) =
      _SetInitialValues;
  const factory EventFormEvent.nameChanged(String name) = _EventNameChanged;
  const factory EventFormEvent.descriptionChanged(String eventDescription) =
      _EventDescriptionChanged;

  const factory EventFormEvent.startTimeChanged(DateTime? startTime) =
      _EventStartTimeChanged;
  const factory EventFormEvent.endTimeChanged(DateTime? endTime) =
      _EventEndTimeChanged;
  const factory EventFormEvent.dateChanged(DateTime? date) = _EventDateChanged;
  const factory EventFormEvent.locationChanged(String location) =
      _EventLocationChanged;
  const factory EventFormEvent.speakerChanged(String speaker) =
      _EventSpeakerChanged;
  const factory EventFormEvent.infoChanged(String info) = _EventInfoChanged;
}
