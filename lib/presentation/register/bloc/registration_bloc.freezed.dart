// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl();

  @override
  String toString() {
    return 'RegistrationEvent.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements RegistrationEvent {
  const factory _Submitted() = _$SubmittedImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegistrationEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegistrationEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNameChangedImplCopyWith<$Res> {
  factory _$$UserNameChangedImplCopyWith(_$UserNameChangedImpl value,
          $Res Function(_$UserNameChangedImpl) then) =
      __$$UserNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$UserNameChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$UserNameChangedImpl>
    implements _$$UserNameChangedImplCopyWith<$Res> {
  __$$UserNameChangedImplCopyWithImpl(
      _$UserNameChangedImpl _value, $Res Function(_$UserNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$UserNameChangedImpl(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChangedImpl implements _UserNameChanged {
  const _$UserNameChangedImpl(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'RegistrationEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameChangedImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      __$$UserNameChangedImplCopyWithImpl<_$UserNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return fullNameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameChanged implements RegistrationEvent {
  const factory _UserNameChanged(final String fullName) = _$UserNameChangedImpl;

  String get fullName;
  @JsonKey(ignore: true)
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrganizationChangedImplCopyWith<$Res> {
  factory _$$OrganizationChangedImplCopyWith(_$OrganizationChangedImpl value,
          $Res Function(_$OrganizationChangedImpl) then) =
      __$$OrganizationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String organization});
}

/// @nodoc
class __$$OrganizationChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$OrganizationChangedImpl>
    implements _$$OrganizationChangedImplCopyWith<$Res> {
  __$$OrganizationChangedImplCopyWithImpl(_$OrganizationChangedImpl _value,
      $Res Function(_$OrganizationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = null,
  }) {
    return _then(_$OrganizationChangedImpl(
      null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrganizationChangedImpl implements _OrganizationChanged {
  const _$OrganizationChangedImpl(this.organization);

  @override
  final String organization;

  @override
  String toString() {
    return 'RegistrationEvent.organizationChanged(organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationChangedImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationChangedImplCopyWith<_$OrganizationChangedImpl> get copyWith =>
      __$$OrganizationChangedImplCopyWithImpl<_$OrganizationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return organizationChanged(organization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return organizationChanged?.call(organization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (organizationChanged != null) {
      return organizationChanged(organization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return organizationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return organizationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (organizationChanged != null) {
      return organizationChanged(this);
    }
    return orElse();
  }
}

abstract class _OrganizationChanged implements RegistrationEvent {
  const factory _OrganizationChanged(final String organization) =
      _$OrganizationChangedImpl;

  String get organization;
  @JsonKey(ignore: true)
  _$$OrganizationChangedImplCopyWith<_$OrganizationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionChangedImplCopyWith<$Res> {
  factory _$$PositionChangedImplCopyWith(_$PositionChangedImpl value,
          $Res Function(_$PositionChangedImpl) then) =
      __$$PositionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String position});
}

/// @nodoc
class __$$PositionChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$PositionChangedImpl>
    implements _$$PositionChangedImplCopyWith<$Res> {
  __$$PositionChangedImplCopyWithImpl(
      _$PositionChangedImpl _value, $Res Function(_$PositionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$PositionChangedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PositionChangedImpl implements _PositionChanged {
  const _$PositionChangedImpl(this.position);

  @override
  final String position;

  @override
  String toString() {
    return 'RegistrationEvent.positionChanged(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionChangedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionChangedImplCopyWith<_$PositionChangedImpl> get copyWith =>
      __$$PositionChangedImplCopyWithImpl<_$PositionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return positionChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return positionChanged?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return positionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return positionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(this);
    }
    return orElse();
  }
}

abstract class _PositionChanged implements RegistrationEvent {
  const factory _PositionChanged(final String position) = _$PositionChangedImpl;

  String get position;
  @JsonKey(ignore: true)
  _$$PositionChangedImplCopyWith<_$PositionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegistrationEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegistrationEvent {
  const factory _ConfirmPasswordChanged(final String confirmPassword) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountryChangedImplCopyWith<$Res> {
  factory _$$CountryChangedImplCopyWith(_$CountryChangedImpl value,
          $Res Function(_$CountryChangedImpl) then) =
      __$$CountryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$$CountryChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$CountryChangedImpl>
    implements _$$CountryChangedImplCopyWith<$Res> {
  __$$CountryChangedImplCopyWithImpl(
      _$CountryChangedImpl _value, $Res Function(_$CountryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$CountryChangedImpl(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountryChangedImpl implements _CountryChanged {
  const _$CountryChangedImpl(this.country);

  @override
  final String country;

  @override
  String toString() {
    return 'RegistrationEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryChangedImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryChangedImplCopyWith<_$CountryChangedImpl> get copyWith =>
      __$$CountryChangedImplCopyWithImpl<_$CountryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return countryChanged?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryChanged implements RegistrationEvent {
  const factory _CountryChanged(final String country) = _$CountryChangedImpl;

  String get country;
  @JsonKey(ignore: true)
  _$$CountryChangedImplCopyWith<_$CountryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserInfoImplCopyWith<$Res> {
  factory _$$UpdateUserInfoImplCopyWith(_$UpdateUserInfoImpl value,
          $Res Function(_$UpdateUserInfoImpl) then) =
      __$$UpdateUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserInfoImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$UpdateUserInfoImpl>
    implements _$$UpdateUserInfoImplCopyWith<$Res> {
  __$$UpdateUserInfoImplCopyWithImpl(
      _$UpdateUserInfoImpl _value, $Res Function(_$UpdateUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserInfoImpl implements _UpdateUserInfo {
  const _$UpdateUserInfoImpl();

  @override
  String toString() {
    return 'RegistrationEvent.updateUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return updateUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return updateUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfo implements RegistrationEvent {
  const factory _UpdateUserInfo() = _$UpdateUserInfoImpl;
}

/// @nodoc
abstract class _$$SetInitialValuesImplCopyWith<$Res> {
  factory _$$SetInitialValuesImplCopyWith(_$SetInitialValuesImpl value,
          $Res Function(_$SetInitialValuesImpl) then) =
      __$$SetInitialValuesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String organization, String position, String country});
}

/// @nodoc
class __$$SetInitialValuesImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$SetInitialValuesImpl>
    implements _$$SetInitialValuesImplCopyWith<$Res> {
  __$$SetInitialValuesImplCopyWithImpl(_$SetInitialValuesImpl _value,
      $Res Function(_$SetInitialValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = null,
    Object? position = null,
    Object? country = null,
  }) {
    return _then(_$SetInitialValuesImpl(
      null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetInitialValuesImpl implements _SetInitialValues {
  const _$SetInitialValuesImpl(this.organization, this.position, this.country);

  @override
  final String organization;
  @override
  final String position;
  @override
  final String country;

  @override
  String toString() {
    return 'RegistrationEvent.setInitialValues(organization: $organization, position: $position, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialValuesImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organization, position, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialValuesImplCopyWith<_$SetInitialValuesImpl> get copyWith =>
      __$$SetInitialValuesImplCopyWithImpl<_$SetInitialValuesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return setInitialValues(organization, position, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return setInitialValues?.call(organization, position, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (setInitialValues != null) {
      return setInitialValues(organization, position, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return setInitialValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return setInitialValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (setInitialValues != null) {
      return setInitialValues(this);
    }
    return orElse();
  }
}

abstract class _SetInitialValues implements RegistrationEvent {
  const factory _SetInitialValues(final String organization,
      final String position, final String country) = _$SetInitialValuesImpl;

  String get organization;
  String get position;
  String get country;
  @JsonKey(ignore: true)
  _$$SetInitialValuesImplCopyWith<_$SetInitialValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl();

  @override
  String toString() {
    return 'RegistrationEvent.updatePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String organization) organizationChanged,
    required TResult Function(String position) positionChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String country) countryChanged,
    required TResult Function() updateUserInfo,
    required TResult Function(
            String organization, String position, String country)
        setInitialValues,
    required TResult Function() updatePassword,
  }) {
    return updatePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String organization)? organizationChanged,
    TResult? Function(String position)? positionChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String country)? countryChanged,
    TResult? Function()? updateUserInfo,
    TResult? Function(String organization, String position, String country)?
        setInitialValues,
    TResult? Function()? updatePassword,
  }) {
    return updatePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String organization)? organizationChanged,
    TResult Function(String position)? positionChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String country)? countryChanged,
    TResult Function()? updateUserInfo,
    TResult Function(String organization, String position, String country)?
        setInitialValues,
    TResult Function()? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UserNameChanged value) fullNameChanged,
    required TResult Function(_OrganizationChanged value) organizationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_SetInitialValues value) setInitialValues,
    required TResult Function(_UpdatePassword value) updatePassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_UserNameChanged value)? fullNameChanged,
    TResult? Function(_OrganizationChanged value)? organizationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_CountryChanged value)? countryChanged,
    TResult? Function(_UpdateUserInfo value)? updateUserInfo,
    TResult? Function(_SetInitialValues value)? setInitialValues,
    TResult? Function(_UpdatePassword value)? updatePassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UserNameChanged value)? fullNameChanged,
    TResult Function(_OrganizationChanged value)? organizationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_SetInitialValues value)? setInitialValues,
    TResult Function(_UpdatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements RegistrationEvent {
  const factory _UpdatePassword() = _$UpdatePasswordImpl;
}

/// @nodoc
mixin _$RegistrationState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  Organization get organization => throw _privateConstructorUsedError;
  Position get position => throw _privateConstructorUsedError;
  ConfirmPassowrd get confirmPassword => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      Password password,
      FullName fullName,
      Organization organization,
      Position position,
      ConfirmPassowrd confirmPassword,
      bool isValid,
      String country,
      String errorMessage});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? organization = null,
    Object? position = null,
    Object? confirmPassword = null,
    Object? isValid = null,
    Object? country = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassowrd,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      Password password,
      FullName fullName,
      Organization organization,
      Position position,
      ConfirmPassowrd confirmPassword,
      bool isValid,
      String country,
      String errorMessage});
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? organization = null,
    Object? position = null,
    Object? confirmPassword = null,
    Object? isValid = null,
    Object? country = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RegistrationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassowrd,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.fullName = const FullName.pure(),
      this.organization = const Organization.pure(),
      this.position = const Position.pure(),
      this.confirmPassword = const ConfirmPassowrd.pure(''),
      this.isValid = false,
      this.country = '',
      this.errorMessage = ''});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final FullName fullName;
  @override
  @JsonKey()
  final Organization organization;
  @override
  @JsonKey()
  final Position position;
  @override
  @JsonKey()
  final ConfirmPassowrd confirmPassword;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'RegistrationState(status: $status, email: $email, password: $password, fullName: $fullName, organization: $organization, position: $position, confirmPassword: $confirmPassword, isValid: $isValid, country: $country, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      email,
      password,
      fullName,
      organization,
      position,
      confirmPassword,
      isValid,
      country,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {final FormzSubmissionStatus status,
      final Email email,
      final Password password,
      final FullName fullName,
      final Organization organization,
      final Position position,
      final ConfirmPassowrd confirmPassword,
      final bool isValid,
      final String country,
      final String errorMessage}) = _$RegistrationStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  Email get email;
  @override
  Password get password;
  @override
  FullName get fullName;
  @override
  Organization get organization;
  @override
  Position get position;
  @override
  ConfirmPassowrd get confirmPassword;
  @override
  bool get isValid;
  @override
  String get country;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
