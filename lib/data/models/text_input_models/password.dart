import 'package:formz/formz.dart';

enum PasswordValidationError { empty, invalid, short }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) =>
      value.isEmpty ? PasswordValidationError.empty : null;
}
