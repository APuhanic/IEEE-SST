part of 'user_managment_bloc.dart';

@freezed
class UserManagmentState with _$UserManagmentState {
  const factory UserManagmentState({
    @Default('') String role,
    @Default('') String errorMessage,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _UserState;
}
