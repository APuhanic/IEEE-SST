// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) commentChanged,
    required TResult Function(int postId) postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? commentChanged,
    TResult? Function(int postId)? postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? commentChanged,
    TResult Function(int postId)? postComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_PostComment value) postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentChanged value)? commentChanged,
    TResult? Function(_PostComment value)? postComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(
          CommentFormEvent value, $Res Function(CommentFormEvent) then) =
      _$CommentFormEventCopyWithImpl<$Res, CommentFormEvent>;
}

/// @nodoc
class _$CommentFormEventCopyWithImpl<$Res, $Val extends CommentFormEvent>
    implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommentChangedImplCopyWith<$Res> {
  factory _$$CommentChangedImplCopyWith(_$CommentChangedImpl value,
          $Res Function(_$CommentChangedImpl) then) =
      __$$CommentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$CommentChangedImplCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res, _$CommentChangedImpl>
    implements _$$CommentChangedImplCopyWith<$Res> {
  __$$CommentChangedImplCopyWithImpl(
      _$CommentChangedImpl _value, $Res Function(_$CommentChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$CommentChangedImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentChangedImpl implements _CommentChanged {
  const _$CommentChangedImpl(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'CommentFormEvent.commentChanged(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentChangedImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentChangedImplCopyWith<_$CommentChangedImpl> get copyWith =>
      __$$CommentChangedImplCopyWithImpl<_$CommentChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) commentChanged,
    required TResult Function(int postId) postComment,
  }) {
    return commentChanged(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? commentChanged,
    TResult? Function(int postId)? postComment,
  }) {
    return commentChanged?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? commentChanged,
    TResult Function(int postId)? postComment,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_PostComment value) postComment,
  }) {
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentChanged value)? commentChanged,
    TResult? Function(_PostComment value)? postComment,
  }) {
    return commentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentChanged implements CommentFormEvent {
  const factory _CommentChanged(final String content) = _$CommentChangedImpl;

  String get content;
  @JsonKey(ignore: true)
  _$$CommentChangedImplCopyWith<_$CommentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCommentImplCopyWith<$Res> {
  factory _$$PostCommentImplCopyWith(
          _$PostCommentImpl value, $Res Function(_$PostCommentImpl) then) =
      __$$PostCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$PostCommentImplCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res, _$PostCommentImpl>
    implements _$$PostCommentImplCopyWith<$Res> {
  __$$PostCommentImplCopyWithImpl(
      _$PostCommentImpl _value, $Res Function(_$PostCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$PostCommentImpl(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PostCommentImpl implements _PostComment {
  const _$PostCommentImpl(this.postId);

  @override
  final int postId;

  @override
  String toString() {
    return 'CommentFormEvent.postComment(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      __$$PostCommentImplCopyWithImpl<_$PostCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) commentChanged,
    required TResult Function(int postId) postComment,
  }) {
    return postComment(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String content)? commentChanged,
    TResult? Function(int postId)? postComment,
  }) {
    return postComment?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? commentChanged,
    TResult Function(int postId)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentChanged value) commentChanged,
    required TResult Function(_PostComment value) postComment,
  }) {
    return postComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentChanged value)? commentChanged,
    TResult? Function(_PostComment value)? postComment,
  }) {
    return postComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentChanged value)? commentChanged,
    TResult Function(_PostComment value)? postComment,
    required TResult orElse(),
  }) {
    if (postComment != null) {
      return postComment(this);
    }
    return orElse();
  }
}

abstract class _PostComment implements CommentFormEvent {
  const factory _PostComment(final int postId) = _$PostCommentImpl;

  int get postId;
  @JsonKey(ignore: true)
  _$$PostCommentImplCopyWith<_$PostCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentFormState {
  String? get id => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentFormStateCopyWith<CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(
          CommentFormState value, $Res Function(CommentFormState) then) =
      _$CommentFormStateCopyWithImpl<$Res, CommentFormState>;
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String content,
      String errorMessage});
}

/// @nodoc
class _$CommentFormStateCopyWithImpl<$Res, $Val extends CommentFormState>
    implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? content = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentFormStateImplCopyWith<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  factory _$$CommentFormStateImplCopyWith(_$CommentFormStateImpl value,
          $Res Function(_$CommentFormStateImpl) then) =
      __$$CommentFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String content,
      String errorMessage});
}

/// @nodoc
class __$$CommentFormStateImplCopyWithImpl<$Res>
    extends _$CommentFormStateCopyWithImpl<$Res, _$CommentFormStateImpl>
    implements _$$CommentFormStateImplCopyWith<$Res> {
  __$$CommentFormStateImplCopyWithImpl(_$CommentFormStateImpl _value,
      $Res Function(_$CommentFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? content = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CommentFormStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentFormStateImpl implements _CommentFormState {
  const _$CommentFormStateImpl(
      {this.id,
      this.status = FormzSubmissionStatus.initial,
      this.content = '',
      this.errorMessage = ''});

  @override
  final String? id;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CommentFormState(id: $id, status: $status, content: $content, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentFormStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, content, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentFormStateImplCopyWith<_$CommentFormStateImpl> get copyWith =>
      __$$CommentFormStateImplCopyWithImpl<_$CommentFormStateImpl>(
          this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState(
      {final String? id,
      final FormzSubmissionStatus status,
      final String content,
      final String errorMessage}) = _$CommentFormStateImpl;

  @override
  String? get id;
  @override
  FormzSubmissionStatus get status;
  @override
  String get content;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CommentFormStateImplCopyWith<_$CommentFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
