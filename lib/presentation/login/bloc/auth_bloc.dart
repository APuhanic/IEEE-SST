import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._supabaseAuthRepository) : super(const _Unauthenticated()) {
    on<_OnInitialAuthEvent>(_onInitialAuthEvent);
    on<_SignOut>(_onSignOut);
    on<_OnCurrentUserChanged>(_onCurrentUserChanged);
    _startUserSubscription();
  }
  final AuthenticationRepository _supabaseAuthRepository;
  StreamSubscription<BaseUserModel?>? _authSubscription;

  void _onInitialAuthEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    BaseUserModel? signedInUser = _supabaseAuthRepository.getCurrentUser();
    if (signedInUser != null) {
      emit(AuthState.authenticated(signedInUser));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  void _onSignOut(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _supabaseAuthRepository.signOut();
  }

  void _startUserSubscription() {
    _authSubscription =
        _supabaseAuthRepository.getCurrentUserStream().listen((user) {
      add(AuthEvent.onCurrentUserChanged(user));
    });
  }

  void _onCurrentUserChanged(
    _OnCurrentUserChanged event,
    Emitter<AuthState> emit,
  ) {
    event.user != null
        ? emit(AuthState.authenticated(event.user!))
        : emit(const AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
