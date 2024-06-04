part of 'event_form_bloc.dart';

@freezed
class EventFormState with _$EventFormState {
  const factory EventFormState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? id,
    @Default('') String name,
    @Default('') String despcription,
    @Default('') String location,
    @Default('') String errorMessage,
    @Default('') String speaker,
    DateTime? time,
  }) = _CreateEventState;
}
