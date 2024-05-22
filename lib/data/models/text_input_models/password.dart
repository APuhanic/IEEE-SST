import 'package:formz/formz.dart';

enum PasswordValidationError { empty, invalid, short }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    return null;
  }

  static const int minPasswordLength = 6;

  // TODO: Find override equivalent
  static PasswordValidationError? validatePassword(String password) {
    if (password.isEmpty) return PasswordValidationError.empty;
    if (password.length < minPasswordLength) {
      return PasswordValidationError.short;
    }
    return null;
  }
}
