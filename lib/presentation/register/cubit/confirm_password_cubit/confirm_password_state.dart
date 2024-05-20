part of 'confirm_password_cubit.dart';

@freezed
class ConfirmPasswordState with _$ConfirmPasswordState {
  const factory ConfirmPasswordState.initial() = _Initial;
  const factory ConfirmPasswordState.confirmed() = _Confirmed;
  const factory ConfirmPasswordState.error(String message) = _Error;
}
