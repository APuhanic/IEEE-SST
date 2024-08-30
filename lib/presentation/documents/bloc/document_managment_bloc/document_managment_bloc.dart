import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/document_model/document_model.dart';
import 'package:ieee_sst/data/repositories/document_repository.dart';
import 'package:injectable/injectable.dart';

part 'document_managment_event.dart';
part 'document_managment_state.dart';
part 'document_managment_bloc.freezed.dart';

@injectable
class DocumentManagmentBloc
    extends Bloc<DocumentManagmentEvent, DocumentManagmentState> {
  DocumentManagmentBloc(this._documentRepository) : super(const _Initial()) {
    on<_LoadDocuments>(_onLoadDocuments);
    on<_DeleteDocument>(_onDeleteDocument);
  }

  final DocumentRepository _documentRepository;

  Future<FutureOr<void>> _onLoadDocuments(
      _LoadDocuments event, Emitter<DocumentManagmentState> emit) async {
    emit(const DocumentManagmentState.loading());
    try {
      final documents = await _documentRepository.fetchDocuments();
      emit(DocumentManagmentState.loaded(documents));
    } catch (e) {
      emit(DocumentManagmentState.error(e.toString()));
    }
  }

  FutureOr<void> _onDeleteDocument(
      _DeleteDocument event, Emitter<DocumentManagmentState> emit) {
    try {
      _documentRepository.deleteDocument(event.document);
      if (state is _Loaded) {
        final documents = (state as _Loaded).documents;
        final updatedDocuments =
            documents.where((e) => e.id != event.document.id).toList();
        emit(DocumentManagmentState.loaded(updatedDocuments));
      }
    } catch (e) {
      emit(DocumentManagmentState.error(e.toString()));
    }
  }
}
