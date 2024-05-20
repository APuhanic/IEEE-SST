import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PasswordInputCubit extends Cubit<String> {
  PasswordInputCubit() : super('asdfasdf');
  void passwordChanged(String password) => emit(password);
}
