import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'user_managment_event.dart';
part 'user_managment_state.dart';
part 'user_managment_bloc.freezed.dart';

@injectable
class UserManagmentBloc extends Bloc<UserManagmentEvent, UserManagmentState> {
  UserManagmentBloc(this._profileRepository) : super(const _UserState()) {
    on<_RoleChanged>(_onRoleChanged);
    on<_UpdateRole>(_onUpdateRole);
  }

  final ProfileRepository _profileRepository;

  void _onRoleChanged(_RoleChanged event, Emitter<UserManagmentState> emit) =>
      emit(state.copyWith(role: event.role));

  Future<void> _onUpdateRole(
      _UpdateRole event, Emitter<UserManagmentState> emit) async {
    try {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      await _profileRepository.updateProfileRole(event.id, state.role);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }
}
