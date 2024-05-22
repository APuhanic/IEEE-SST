import 'package:formz/formz.dart';

enum ConfirmPasswordValidationError { invalid }

class ConfirmPassowrd
    extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassowrd.pure() : super.pure('');
  const ConfirmPassowrd.dirty([super.value = '']) : super.dirty();

  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }
    /*if (value != RegisterState.passwordValue) {
      return ConfirmPasswordValidationError.invalid;
    }*/
    return null;
  }
}
