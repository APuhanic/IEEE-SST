part of 'attendees_bloc.dart';

@freezed
class AttendeesEvent with _$AttendeesEvent {
  const factory AttendeesEvent.loadAttendees() = _LoadAttendees;
}
