import 'package:formz/formz.dart';

enum PositionValidationError { invalid }

class Position extends FormzInput<String, PositionValidationError> {
  const Position.pure() : super.pure('');

  const Position.dirty([super.value = '']) : super.dirty();

  static final RegExp _userNameRegExp = RegExp(
    r'^[a-zA-Z0-9_]{3,20}$',
  );

  @override
  PositionValidationError? validator(String value) {
    return _userNameRegExp.hasMatch(value)
        ? null
        : PositionValidationError.invalid;
  }
}
