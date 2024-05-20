import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_password_state.dart';
part 'confirm_password_cubit.freezed.dart';

@injectable
class ConfirmPasswordCubit extends Cubit<ConfirmPasswordState> {
  ConfirmPasswordCubit() : super(const ConfirmPasswordState.initial());
}
