import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.supabaseProfileRepository) : super(const _Initial()) {
    on<_LoadProfile>(_onLoadProfile);
  }

  final ProfileRepository supabaseProfileRepository;

  Future<void> _onLoadProfile(
      _LoadProfile event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final profile = await supabaseProfileRepository.getProfile();
      emit(ProfileState.loadedProfile(profile));
    } catch (e) {
      emit(ProfileState.error(e.toString()));
    }
  }
}
