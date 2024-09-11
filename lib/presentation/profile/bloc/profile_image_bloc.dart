import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/repositories/profile_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'profile_image_event.dart';
part 'profile_image_state.dart';
part 'profile_image_bloc.freezed.dart';

@injectable
class ProfileImageBloc extends Bloc<ProfileImageEvent, ProfileImageState> {
  ProfileImageBloc(this._profileRepository) : super(const ProfileImageState()) {
    on<_ImageChanged>(_onImageChanged);
    on<_AddProfileImage>(_onAddProfileImage);
    on<_RemoveImage>(_onRemoveImage);
  }

  final ProfileRepository _profileRepository;

  void _onImageChanged(_ImageChanged event, Emitter<ProfileImageState> emit) =>
      emit(state.copyWith(
        image: event.image,
        isChoosing: true,
      ));

  Future<void> _onAddProfileImage(
      _AddProfileImage event, Emitter<ProfileImageState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _profileRepository.addProfileImage(
        event.profile,
        File(state.image!.path),
      );
      emit(state.copyWith(
          status: FormzSubmissionStatus.success, isChoosing: false));
    } catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void _onRemoveImage(_RemoveImage event, Emitter<ProfileImageState> emit) {
    emit(state.copyWith(image: null, isChoosing: false));
  }
}
