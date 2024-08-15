import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

part 'auth_session_state.dart';
part 'auth_session_cubit.freezed.dart';

@injectable
class AuthSessionCubit extends Cubit<AuthSessionState> {
  AuthSessionCubit(this._supabaseClient)
      : super(const AuthSessionState.initial());

  final SupabaseClient _supabaseClient;

  void checkUserRole() {
    final userRole =
        _supabaseClient.auth.currentSession!.user.userMetadata!['role'];
    if (userRole == UserRoles.admin) {
      emit(const AuthSessionState.isAdmin(isInAdminMode: true));
    } else {
      emit(const AuthSessionState.isUser());
    }
  }

  void toggleAdminMode() {
    state.maybeWhen(
      isAdmin: (isInAdminMode) {
        emit(AuthSessionState.isAdmin(isInAdminMode: !isInAdminMode));
      },
      orElse: () {},
    );
  }
}
