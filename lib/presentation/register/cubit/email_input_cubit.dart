import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmailInputCubit extends Cubit<String> {
  EmailInputCubit() : super('a@a.comz');
  void emailChanged(String email) => emit(email);
}
