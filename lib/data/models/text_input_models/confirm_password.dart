import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError { invalid, mismatch }

class ConfirmPassowrd
    extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassowrd.pure(this.password) : super.pure('');
  const ConfirmPassowrd.dirty(this.password, [super.value = ''])
      : super.dirty();

  final String password;

  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (value.isEmpty) return ConfirmPasswordValidationError.invalid;
    return value == password ? null : ConfirmPasswordValidationError.mismatch;
  }
}
