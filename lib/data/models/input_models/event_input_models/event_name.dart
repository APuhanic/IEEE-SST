import 'package:formz/formz.dart';

enum EventNameValidationError { invalid }

class EventName extends FormzInput<String, EventNameValidationError> {
  const EventName.pure() : super.pure('');

  const EventName.dirty([super.value = '']) : super.dirty();

  static final RegExp _userNameRegExp = RegExp(
    r'^[a-zA-Z0-9_ ]{3,100}$',
  );

  @override
  EventNameValidationError? validator(String value) =>
      _userNameRegExp.hasMatch(value) && value.isNotEmpty
          ? null
          : EventNameValidationError.invalid;
}
