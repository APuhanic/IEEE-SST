part of 'sponsor_form_bloc.dart';

@freezed
class SponsorFormState with _$SponsorFormState {
  const factory SponsorFormState({
    @Default('') String name,
    @Default('') String errorMessage,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    XFile? image,
  }) = _AddSponsorState;
}
