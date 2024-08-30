part of 'document_form_bloc.dart';

@freezed
class DocumentFormState with _$DocumentFormState {
  const factory DocumentFormState({
    @Default('') String name,
    @Default('') String errorMessage,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    FilePickerResult? file,
  }) = _DocumentFormState;
}
