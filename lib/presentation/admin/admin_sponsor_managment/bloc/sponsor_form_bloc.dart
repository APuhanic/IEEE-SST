import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/sponsor_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'sponsor_form_event.dart';
part 'sponsor_form_state.dart';
part 'sponsor_form_bloc.freezed.dart';

@injectable
class SponsorFormBloc extends Bloc<SponsorFormEvent, SponsorFormState> {
  SponsorFormBloc(this._supabaseSponsorRepository)
      : super(const _AddSponsorState()) {
    on<_NameChanged>(_onNameChanged);
    on<_ImageChanged>(_onImageChanged);
    on<_AddSponsor>(_onAddSponsor);
  }

  final SponsorRepository _supabaseSponsorRepository;

  _onNameChanged(_NameChanged event, Emitter<SponsorFormState> emit) {
    emit(state.copyWith(name: event.name));
  }

  _onImageChanged(_ImageChanged event, Emitter<SponsorFormState> emit) {
    emit(state.copyWith(image: event.image));
  }

  _onAddSponsor(_AddSponsor event, Emitter<SponsorFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _supabaseSponsorRepository.addSponsor(
        state.name,
        File(state.image!.path),
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
