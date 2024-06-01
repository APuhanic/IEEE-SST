part of 'create_event_bloc.dart';

@freezed
class CreateEventState with _$CreateEventState {
  const factory CreateEventState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String eventName,
    @Default('') String eventDescription,
    @Default('') String errorMessage,
  }) = _CreateEventState;
}
