import 'package:formz/formz.dart';

enum OrganizationValidationError { invalid }

class Organization extends FormzInput<String, OrganizationValidationError> {
  const Organization.pure() : super.pure('');

  const Organization.dirty([super.value = '']) : super.dirty();

  static final RegExp _userNameRegExp = RegExp(
    r'^[a-zA-Z0-9_]{3,20}$',
  );

  @override
  OrganizationValidationError? validator(String value) {
    return _userNameRegExp.hasMatch(value)
        ? null
        : OrganizationValidationError.invalid;
  }
}
