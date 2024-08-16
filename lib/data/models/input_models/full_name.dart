import 'package:formz/formz.dart';

enum FullNameValidationError { invalid }

class FullName extends FormzInput<String, FullNameValidationError> {
  const FullName.pure() : super.pure('');

  const FullName.dirty([super.value = '']) : super.dirty();

  static final RegExp _userNameRegExp = RegExp(
    r'^[a-zA-Z0-9_ ]{3,40}$',
  );

  @override
  FullNameValidationError? validator(String value) =>
      _userNameRegExp.hasMatch(value) && value.isNotEmpty
          ? null
          : FullNameValidationError.invalid;
}
