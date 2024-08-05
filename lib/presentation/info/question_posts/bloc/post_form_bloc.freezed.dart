// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res, PostFormEvent>;
}

/// @nodoc
class _$PostFormEventCopyWithImpl<$Res, $Val extends PostFormEvent>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatePostImplCopyWith<$Res> {
  factory _$$CreatePostImplCopyWith(
          _$CreatePostImpl value, $Res Function(_$CreatePostImpl) then) =
      __$$CreatePostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePostImplCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$CreatePostImpl>
    implements _$$CreatePostImplCopyWith<$Res> {
  __$$CreatePostImplCopyWithImpl(
      _$CreatePostImpl _value, $Res Function(_$CreatePostImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatePostImpl implements _CreatePost {
  const _$CreatePostImpl();

  @override
  String toString() {
    return 'PostFormEvent.createPost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) {
    return createPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) {
    return createPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) {
    return createPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class _CreatePost implements PostFormEvent {
  const factory _CreatePost() = _$CreatePostImpl;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'PostFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PostFormEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentChangedImplCopyWith<$Res> {
  factory _$$ContentChangedImplCopyWith(_$ContentChangedImpl value,
          $Res Function(_$ContentChangedImpl) then) =
      __$$ContentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$ContentChangedImplCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$ContentChangedImpl>
    implements _$$ContentChangedImplCopyWith<$Res> {
  __$$ContentChangedImplCopyWithImpl(
      _$ContentChangedImpl _value, $Res Function(_$ContentChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ContentChangedImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentChangedImpl implements _ContentChanged {
  const _$ContentChangedImpl(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'PostFormEvent.contentChanged(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentChangedImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentChangedImplCopyWith<_$ContentChangedImpl> get copyWith =>
      __$$ContentChangedImplCopyWithImpl<_$ContentChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) {
    return contentChanged(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) {
    return contentChanged?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) {
    return contentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements PostFormEvent {
  const factory _ContentChanged(final String content) = _$ContentChangedImpl;

  String get content;
  @JsonKey(ignore: true)
  _$$ContentChangedImplCopyWith<_$ContentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePostImplCopyWith<$Res> {
  factory _$$UpdatePostImplCopyWith(
          _$UpdatePostImpl value, $Res Function(_$UpdatePostImpl) then) =
      __$$UpdatePostImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePostImplCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$UpdatePostImpl>
    implements _$$UpdatePostImplCopyWith<$Res> {
  __$$UpdatePostImplCopyWithImpl(
      _$UpdatePostImpl _value, $Res Function(_$UpdatePostImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePostImpl implements _UpdatePost {
  const _$UpdatePostImpl();

  @override
  String toString() {
    return 'PostFormEvent.updatePost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatePostImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) {
    return updatePost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) {
    return updatePost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return updatePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) {
    return updatePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost(this);
    }
    return orElse();
  }
}

abstract class _UpdatePost implements PostFormEvent {
  const factory _UpdatePost() = _$UpdatePostImpl;
}

/// @nodoc
abstract class _$$DeletePostImplCopyWith<$Res> {
  factory _$$DeletePostImplCopyWith(
          _$DeletePostImpl value, $Res Function(_$DeletePostImpl) then) =
      __$$DeletePostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$DeletePostImplCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res, _$DeletePostImpl>
    implements _$$DeletePostImplCopyWith<$Res> {
  __$$DeletePostImplCopyWithImpl(
      _$DeletePostImpl _value, $Res Function(_$DeletePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$DeletePostImpl(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePostImpl implements _DeletePost {
  const _$DeletePostImpl(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'PostFormEvent.deletePost(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      __$$DeletePostImplCopyWithImpl<_$DeletePostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createPost,
    required TResult Function(String title) titleChanged,
    required TResult Function(String content) contentChanged,
    required TResult Function() updatePost,
    required TResult Function(String postId) deletePost,
  }) {
    return deletePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createPost,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String content)? contentChanged,
    TResult? Function()? updatePost,
    TResult? Function(String postId)? deletePost,
  }) {
    return deletePost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createPost,
    TResult Function(String title)? titleChanged,
    TResult Function(String content)? contentChanged,
    TResult Function()? updatePost,
    TResult Function(String postId)? deletePost,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePost value)? createPost,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_UpdatePost value)? updatePost,
    TResult? Function(_DeletePost value)? deletePost,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class _DeletePost implements PostFormEvent {
  const factory _DeletePost(final String postId) = _$DeletePostImpl;

  String get postId;
  @JsonKey(ignore: true)
  _$$DeletePostImplCopyWith<_$DeletePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostFormState {
  String? get id => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get timePosted => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormStateCopyWith<PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res, PostFormState>;
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String title,
      String content,
      String timePosted,
      String fullName,
      String errorMessage});
}

/// @nodoc
class _$PostFormStateCopyWithImpl<$Res, $Val extends PostFormState>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? title = null,
    Object? content = null,
    Object? timePosted = null,
    Object? fullName = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timePosted: null == timePosted
          ? _value.timePosted
          : timePosted // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFormStateImplCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$$PostFormStateImplCopyWith(
          _$PostFormStateImpl value, $Res Function(_$PostFormStateImpl) then) =
      __$$PostFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String title,
      String content,
      String timePosted,
      String fullName,
      String errorMessage});
}

/// @nodoc
class __$$PostFormStateImplCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res, _$PostFormStateImpl>
    implements _$$PostFormStateImplCopyWith<$Res> {
  __$$PostFormStateImplCopyWithImpl(
      _$PostFormStateImpl _value, $Res Function(_$PostFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? title = null,
    Object? content = null,
    Object? timePosted = null,
    Object? fullName = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PostFormStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timePosted: null == timePosted
          ? _value.timePosted
          : timePosted // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostFormStateImpl implements _PostFormState {
  const _$PostFormStateImpl(
      {this.id,
      this.status = FormzSubmissionStatus.initial,
      this.title = '',
      this.content = '',
      this.timePosted = '',
      this.fullName = '',
      this.errorMessage = ''});

  @override
  final String? id;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String timePosted;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'PostFormState(id: $id, status: $status, title: $title, content: $content, timePosted: $timePosted, fullName: $fullName, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFormStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timePosted, timePosted) ||
                other.timePosted == timePosted) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, title, content,
      timePosted, fullName, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFormStateImplCopyWith<_$PostFormStateImpl> get copyWith =>
      __$$PostFormStateImplCopyWithImpl<_$PostFormStateImpl>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
      {final String? id,
      final FormzSubmissionStatus status,
      final String title,
      final String content,
      final String timePosted,
      final String fullName,
      final String errorMessage}) = _$PostFormStateImpl;

  @override
  String? get id;
  @override
  FormzSubmissionStatus get status;
  @override
  String get title;
  @override
  String get content;
  @override
  String get timePosted;
  @override
  String get fullName;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PostFormStateImplCopyWith<_$PostFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
