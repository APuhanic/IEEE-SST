part of 'document_managment_bloc.dart';

@freezed
class DocumentManagmentState with _$DocumentManagmentState {
  const factory DocumentManagmentState.initial() = _Initial;
  const factory DocumentManagmentState.loading() = _Loading;
  const factory DocumentManagmentState.loaded(List<Document> documents) =
      _Loaded;
  const factory DocumentManagmentState.error(String message) = _Error;
}
