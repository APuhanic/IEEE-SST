import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/document_repository.dart';
import 'package:injectable/injectable.dart';

part 'document_form_event.dart';
part 'document_form_state.dart';
part 'document_form_bloc.freezed.dart';

@injectable
class DocumentFormBloc extends Bloc<DocumentFormEvent, DocumentFormState> {
  DocumentFormBloc(this._documentRepository)
      : super(const _DocumentFormState()) {
    on<_FileChanged>(_onFileChanged);
    on<_RemoveFile>(_onRemoveFile);
    on<_NameChanged>(_onNameChanged);
    on<_UploadDocument>(_onUploadDocument);
  }

  final DocumentRepository _documentRepository;

  void _onFileChanged(_FileChanged event, Emitter<DocumentFormState> emit) {
    emit(state.copyWith(file: event.file));
  }

  void _onNameChanged(_NameChanged event, Emitter<DocumentFormState> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onRemoveFile(_RemoveFile event, Emitter<DocumentFormState> emit) {
    emit(state.copyWith(file: null));
  }

  Future<void> _onUploadDocument(
      _UploadDocument event, Emitter<DocumentFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _documentRepository.addDocument(
        state.name,
        state.file!,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
