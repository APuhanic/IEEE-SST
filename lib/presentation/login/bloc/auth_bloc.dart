import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const _Unauthenticated()) {
    on<_InitialAuthEvent>(_onInitialAuthEvent);
    on<_SignOut>(_onSignOut);
    on<_OnCurrentUserChanged>(_onCurrentUserChanged);
    _startUserSubscription();
  }
  final AuthenticationRepository _authRepository;
  StreamSubscription<BaseUserModel?>? _authSubscription;

  void _onInitialAuthEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    BaseUserModel? signedInUser = _authRepository.getCurrentUser();
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
    final GoogleSignIn googleSignIn = GoogleSignIn();

    await _authRepository.signOut();
    await googleSignIn.signOut();
  }

  void _startUserSubscription() {
    _authSubscription = _authRepository.getCurrentUserStream().listen((user) {
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
