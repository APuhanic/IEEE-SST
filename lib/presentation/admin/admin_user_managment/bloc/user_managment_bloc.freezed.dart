// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_managment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserManagmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String role) roleChanged,
    required TResult Function(String id) updateRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String role)? roleChanged,
    TResult? Function(String id)? updateRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String role)? roleChanged,
    TResult Function(String id)? updateRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_UpdateRole value) updateRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoleChanged value)? roleChanged,
    TResult? Function(_UpdateRole value)? updateRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_UpdateRole value)? updateRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagmentEventCopyWith<$Res> {
  factory $UserManagmentEventCopyWith(
          UserManagmentEvent value, $Res Function(UserManagmentEvent) then) =
      _$UserManagmentEventCopyWithImpl<$Res, UserManagmentEvent>;
}

/// @nodoc
class _$UserManagmentEventCopyWithImpl<$Res, $Val extends UserManagmentEvent>
    implements $UserManagmentEventCopyWith<$Res> {
  _$UserManagmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoleChangedImplCopyWith<$Res> {
  factory _$$RoleChangedImplCopyWith(
          _$RoleChangedImpl value, $Res Function(_$RoleChangedImpl) then) =
      __$$RoleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$$RoleChangedImplCopyWithImpl<$Res>
    extends _$UserManagmentEventCopyWithImpl<$Res, _$RoleChangedImpl>
    implements _$$RoleChangedImplCopyWith<$Res> {
  __$$RoleChangedImplCopyWithImpl(
      _$RoleChangedImpl _value, $Res Function(_$RoleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$RoleChangedImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleChangedImpl implements _RoleChanged {
  const _$RoleChangedImpl(this.role);

  @override
  final String role;

  @override
  String toString() {
    return 'UserManagmentEvent.roleChanged(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleChangedImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleChangedImplCopyWith<_$RoleChangedImpl> get copyWith =>
      __$$RoleChangedImplCopyWithImpl<_$RoleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String role) roleChanged,
    required TResult Function(String id) updateRole,
  }) {
    return roleChanged(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String role)? roleChanged,
    TResult? Function(String id)? updateRole,
  }) {
    return roleChanged?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String role)? roleChanged,
    TResult Function(String id)? updateRole,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_UpdateRole value) updateRole,
  }) {
    return roleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoleChanged value)? roleChanged,
    TResult? Function(_UpdateRole value)? updateRole,
  }) {
    return roleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_UpdateRole value)? updateRole,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(this);
    }
    return orElse();
  }
}

abstract class _RoleChanged implements UserManagmentEvent {
  const factory _RoleChanged(final String role) = _$RoleChangedImpl;

  String get role;
  @JsonKey(ignore: true)
  _$$RoleChangedImplCopyWith<_$RoleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRoleImplCopyWith<$Res> {
  factory _$$UpdateRoleImplCopyWith(
          _$UpdateRoleImpl value, $Res Function(_$UpdateRoleImpl) then) =
      __$$UpdateRoleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdateRoleImplCopyWithImpl<$Res>
    extends _$UserManagmentEventCopyWithImpl<$Res, _$UpdateRoleImpl>
    implements _$$UpdateRoleImplCopyWith<$Res> {
  __$$UpdateRoleImplCopyWithImpl(
      _$UpdateRoleImpl _value, $Res Function(_$UpdateRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateRoleImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateRoleImpl implements _UpdateRole {
  const _$UpdateRoleImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserManagmentEvent.updateRole(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRoleImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRoleImplCopyWith<_$UpdateRoleImpl> get copyWith =>
      __$$UpdateRoleImplCopyWithImpl<_$UpdateRoleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String role) roleChanged,
    required TResult Function(String id) updateRole,
  }) {
    return updateRole(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String role)? roleChanged,
    TResult? Function(String id)? updateRole,
  }) {
    return updateRole?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String role)? roleChanged,
    TResult Function(String id)? updateRole,
    required TResult orElse(),
  }) {
    if (updateRole != null) {
      return updateRole(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_UpdateRole value) updateRole,
  }) {
    return updateRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RoleChanged value)? roleChanged,
    TResult? Function(_UpdateRole value)? updateRole,
  }) {
    return updateRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_UpdateRole value)? updateRole,
    required TResult orElse(),
  }) {
    if (updateRole != null) {
      return updateRole(this);
    }
    return orElse();
  }
}

abstract class _UpdateRole implements UserManagmentEvent {
  const factory _UpdateRole(final String id) = _$UpdateRoleImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UpdateRoleImplCopyWith<_$UpdateRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserManagmentState {
  String get role => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagmentStateCopyWith<UserManagmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagmentStateCopyWith<$Res> {
  factory $UserManagmentStateCopyWith(
          UserManagmentState value, $Res Function(UserManagmentState) then) =
      _$UserManagmentStateCopyWithImpl<$Res, UserManagmentState>;
  @useResult
  $Res call({String role, String errorMessage, FormzSubmissionStatus status});
}

/// @nodoc
class _$UserManagmentStateCopyWithImpl<$Res, $Val extends UserManagmentState>
    implements $UserManagmentStateCopyWith<$Res> {
  _$UserManagmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserManagmentStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String errorMessage, FormzSubmissionStatus status});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserManagmentStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$UserStateImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.role = '',
      this.errorMessage = '',
      this.status = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'UserManagmentState(role: $role, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role, errorMessage, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserManagmentState {
  const factory _UserState(
      {final String role,
      final String errorMessage,
      final FormzSubmissionStatus status}) = _$UserStateImpl;

  @override
  String get role;
  @override
  String get errorMessage;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
