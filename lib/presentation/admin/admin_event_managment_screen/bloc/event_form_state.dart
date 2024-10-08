part of 'event_form_bloc.dart';

@freezed
class EventFormState with _$EventFormState {
  const factory EventFormState({
    String? id,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String name,
    @Default('') String description,
    @Default('') String location,
    @Default('') String errorMessage,
    @Default('') String speaker,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? date,
    String? info,
    @Default(false) bool isValid,
  }) = _CreateEventState;
}
