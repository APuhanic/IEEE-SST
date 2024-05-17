import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputCubit extends Cubit<String> {
  PasswordInputCubit() : super('');
  void passwordChanged(String password) => emit(password);
}
