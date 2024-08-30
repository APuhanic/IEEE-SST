// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocumentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) fileChanged,
    required TResult Function() removeFile,
    required TResult Function(String name) nameChanged,
    required TResult Function() uploadDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilePickerResult file)? fileChanged,
    TResult? Function()? removeFile,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? uploadDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? fileChanged,
    TResult Function()? removeFile,
    TResult Function(String name)? nameChanged,
    TResult Function()? uploadDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileChanged value) fileChanged,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UploadDocument value) uploadDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileChanged value)? fileChanged,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UploadDocument value)? uploadDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileChanged value)? fileChanged,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UploadDocument value)? uploadDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormEventCopyWith<$Res> {
  factory $DocumentFormEventCopyWith(
          DocumentFormEvent value, $Res Function(DocumentFormEvent) then) =
      _$DocumentFormEventCopyWithImpl<$Res, DocumentFormEvent>;
}

/// @nodoc
class _$DocumentFormEventCopyWithImpl<$Res, $Val extends DocumentFormEvent>
    implements $DocumentFormEventCopyWith<$Res> {
  _$DocumentFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileChangedImplCopyWith<$Res> {
  factory _$$FileChangedImplCopyWith(
          _$FileChangedImpl value, $Res Function(_$FileChangedImpl) then) =
      __$$FileChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilePickerResult file});
}

/// @nodoc
class __$$FileChangedImplCopyWithImpl<$Res>
    extends _$DocumentFormEventCopyWithImpl<$Res, _$FileChangedImpl>
    implements _$$FileChangedImplCopyWith<$Res> {
  __$$FileChangedImplCopyWithImpl(
      _$FileChangedImpl _value, $Res Function(_$FileChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$FileChangedImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilePickerResult,
    ));
  }
}

/// @nodoc

class _$FileChangedImpl implements _FileChanged {
  const _$FileChangedImpl(this.file);

  @override
  final FilePickerResult file;

  @override
  String toString() {
    return 'DocumentFormEvent.fileChanged(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileChangedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileChangedImplCopyWith<_$FileChangedImpl> get copyWith =>
      __$$FileChangedImplCopyWithImpl<_$FileChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) fileChanged,
    required TResult Function() removeFile,
    required TResult Function(String name) nameChanged,
    required TResult Function() uploadDocument,
  }) {
    return fileChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilePickerResult file)? fileChanged,
    TResult? Function()? removeFile,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? uploadDocument,
  }) {
    return fileChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? fileChanged,
    TResult Function()? removeFile,
    TResult Function(String name)? nameChanged,
    TResult Function()? uploadDocument,
    required TResult orElse(),
  }) {
    if (fileChanged != null) {
      return fileChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileChanged value) fileChanged,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UploadDocument value) uploadDocument,
  }) {
    return fileChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileChanged value)? fileChanged,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UploadDocument value)? uploadDocument,
  }) {
    return fileChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileChanged value)? fileChanged,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UploadDocument value)? uploadDocument,
    required TResult orElse(),
  }) {
    if (fileChanged != null) {
      return fileChanged(this);
    }
    return orElse();
  }
}

abstract class _FileChanged implements DocumentFormEvent {
  const factory _FileChanged(final FilePickerResult file) = _$FileChangedImpl;

  FilePickerResult get file;
  @JsonKey(ignore: true)
  _$$FileChangedImplCopyWith<_$FileChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFileImplCopyWith<$Res> {
  factory _$$RemoveFileImplCopyWith(
          _$RemoveFileImpl value, $Res Function(_$RemoveFileImpl) then) =
      __$$RemoveFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveFileImplCopyWithImpl<$Res>
    extends _$DocumentFormEventCopyWithImpl<$Res, _$RemoveFileImpl>
    implements _$$RemoveFileImplCopyWith<$Res> {
  __$$RemoveFileImplCopyWithImpl(
      _$RemoveFileImpl _value, $Res Function(_$RemoveFileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveFileImpl implements _RemoveFile {
  const _$RemoveFileImpl();

  @override
  String toString() {
    return 'DocumentFormEvent.removeFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) fileChanged,
    required TResult Function() removeFile,
    required TResult Function(String name) nameChanged,
    required TResult Function() uploadDocument,
  }) {
    return removeFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilePickerResult file)? fileChanged,
    TResult? Function()? removeFile,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? uploadDocument,
  }) {
    return removeFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? fileChanged,
    TResult Function()? removeFile,
    TResult Function(String name)? nameChanged,
    TResult Function()? uploadDocument,
    required TResult orElse(),
  }) {
    if (removeFile != null) {
      return removeFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileChanged value) fileChanged,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UploadDocument value) uploadDocument,
  }) {
    return removeFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileChanged value)? fileChanged,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UploadDocument value)? uploadDocument,
  }) {
    return removeFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileChanged value)? fileChanged,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UploadDocument value)? uploadDocument,
    required TResult orElse(),
  }) {
    if (removeFile != null) {
      return removeFile(this);
    }
    return orElse();
  }
}

abstract class _RemoveFile implements DocumentFormEvent {
  const factory _RemoveFile() = _$RemoveFileImpl;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$DocumentFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'DocumentFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) fileChanged,
    required TResult Function() removeFile,
    required TResult Function(String name) nameChanged,
    required TResult Function() uploadDocument,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilePickerResult file)? fileChanged,
    TResult? Function()? removeFile,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? uploadDocument,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? fileChanged,
    TResult Function()? removeFile,
    TResult Function(String name)? nameChanged,
    TResult Function()? uploadDocument,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileChanged value) fileChanged,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UploadDocument value) uploadDocument,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileChanged value)? fileChanged,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UploadDocument value)? uploadDocument,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileChanged value)? fileChanged,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UploadDocument value)? uploadDocument,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements DocumentFormEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadDocumentImplCopyWith<$Res> {
  factory _$$UploadDocumentImplCopyWith(_$UploadDocumentImpl value,
          $Res Function(_$UploadDocumentImpl) then) =
      __$$UploadDocumentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadDocumentImplCopyWithImpl<$Res>
    extends _$DocumentFormEventCopyWithImpl<$Res, _$UploadDocumentImpl>
    implements _$$UploadDocumentImplCopyWith<$Res> {
  __$$UploadDocumentImplCopyWithImpl(
      _$UploadDocumentImpl _value, $Res Function(_$UploadDocumentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadDocumentImpl implements _UploadDocument {
  const _$UploadDocumentImpl();

  @override
  String toString() {
    return 'DocumentFormEvent.uploadDocument()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadDocumentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) fileChanged,
    required TResult Function() removeFile,
    required TResult Function(String name) nameChanged,
    required TResult Function() uploadDocument,
  }) {
    return uploadDocument();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FilePickerResult file)? fileChanged,
    TResult? Function()? removeFile,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? uploadDocument,
  }) {
    return uploadDocument?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? fileChanged,
    TResult Function()? removeFile,
    TResult Function(String name)? nameChanged,
    TResult Function()? uploadDocument,
    required TResult orElse(),
  }) {
    if (uploadDocument != null) {
      return uploadDocument();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileChanged value) fileChanged,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_UploadDocument value) uploadDocument,
  }) {
    return uploadDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileChanged value)? fileChanged,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_UploadDocument value)? uploadDocument,
  }) {
    return uploadDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileChanged value)? fileChanged,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_UploadDocument value)? uploadDocument,
    required TResult orElse(),
  }) {
    if (uploadDocument != null) {
      return uploadDocument(this);
    }
    return orElse();
  }
}

abstract class _UploadDocument implements DocumentFormEvent {
  const factory _UploadDocument() = _$UploadDocumentImpl;
}

/// @nodoc
mixin _$DocumentFormState {
  String get name => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  FilePickerResult? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentFormStateCopyWith<DocumentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormStateCopyWith<$Res> {
  factory $DocumentFormStateCopyWith(
          DocumentFormState value, $Res Function(DocumentFormState) then) =
      _$DocumentFormStateCopyWithImpl<$Res, DocumentFormState>;
  @useResult
  $Res call(
      {String name,
      String errorMessage,
      FormzSubmissionStatus status,
      FilePickerResult? file});
}

/// @nodoc
class _$DocumentFormStateCopyWithImpl<$Res, $Val extends DocumentFormState>
    implements $DocumentFormStateCopyWith<$Res> {
  _$DocumentFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? status = null,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentFormStateImplCopyWith<$Res>
    implements $DocumentFormStateCopyWith<$Res> {
  factory _$$DocumentFormStateImplCopyWith(_$DocumentFormStateImpl value,
          $Res Function(_$DocumentFormStateImpl) then) =
      __$$DocumentFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String errorMessage,
      FormzSubmissionStatus status,
      FilePickerResult? file});
}

/// @nodoc
class __$$DocumentFormStateImplCopyWithImpl<$Res>
    extends _$DocumentFormStateCopyWithImpl<$Res, _$DocumentFormStateImpl>
    implements _$$DocumentFormStateImplCopyWith<$Res> {
  __$$DocumentFormStateImplCopyWithImpl(_$DocumentFormStateImpl _value,
      $Res Function(_$DocumentFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? status = null,
    Object? file = freezed,
  }) {
    return _then(_$DocumentFormStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }
}

/// @nodoc

class _$DocumentFormStateImpl implements _DocumentFormState {
  const _$DocumentFormStateImpl(
      {this.name = '',
      this.errorMessage = '',
      this.status = FormzSubmissionStatus.initial,
      this.file});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  final FilePickerResult? file;

  @override
  String toString() {
    return 'DocumentFormState(name: $name, errorMessage: $errorMessage, status: $status, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, errorMessage, status, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentFormStateImplCopyWith<_$DocumentFormStateImpl> get copyWith =>
      __$$DocumentFormStateImplCopyWithImpl<_$DocumentFormStateImpl>(
          this, _$identity);
}

abstract class _DocumentFormState implements DocumentFormState {
  const factory _DocumentFormState(
      {final String name,
      final String errorMessage,
      final FormzSubmissionStatus status,
      final FilePickerResult? file}) = _$DocumentFormStateImpl;

  @override
  String get name;
  @override
  String get errorMessage;
  @override
  FormzSubmissionStatus get status;
  @override
  FilePickerResult? get file;
  @override
  @JsonKey(ignore: true)
  _$$DocumentFormStateImplCopyWith<_$DocumentFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
