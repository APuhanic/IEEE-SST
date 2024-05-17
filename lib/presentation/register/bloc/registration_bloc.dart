import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._supabaseAuthRepository) : super(const _Initial()) {
    on<RegistrationEvent>(
      _onRegistrationEvent,
    );
  }
  final AuthenticationRepository _supabaseAuthRepository;

  void _onRegistrationEvent(
    RegistrationEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.loading());
    await event.when(
      register: (email, password, userName) async {
        try {
          await _supabaseAuthRepository.signUpWithEmailAndPassword(
              email, password);
          emit(const RegistrationState.success());
        } catch (e) {
          emit(RegistrationState.error(e.toString()));
        }
      },
    );
  }
}
