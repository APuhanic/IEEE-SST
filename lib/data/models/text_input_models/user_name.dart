import 'package:formz/formz.dart';

enum UserNameValidationError { invalid }

class UserName extends FormzInput<String, UserNameValidationError> {
  const UserName.pure() : super.pure('');

  const UserName.dirty([super.value = '']) : super.dirty();

  static final RegExp _userNameRegExp = RegExp(
    r'^[a-zA-Z0-9_]{3,20}$',
  );

  @override
  UserNameValidationError? validator(String value) {
    return _userNameRegExp.hasMatch(value)
        ? null
        : UserNameValidationError.invalid;
  }
}
