// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;
import 'package:supabase_flutter/supabase_flutter.dart' as _i7;

import '../data/clients/supabase_auth_client.dart' as _i11;
import '../data/providers/global_bloc_observer.dart' as _i10;
import '../data/repositories/supabase_user_repository.dart' as _i13;
import '../data/router/navigator_key_manager.dart' as _i9;
import '../data/router/router.dart' as _i16;
import '../domain/modules/app_module.dart' as _i18;
import '../domain/modules/navigator_key_manager_module.dart' as _i19;
import '../domain/repositories/auth/auth_repository.dart' as _i12;
import '../presentation/login/bloc/auth_bloc.dart' as _i14;
import '../presentation/login/bloc/login/login_bloc.dart' as _i17;
import '../presentation/register/bloc/registration_bloc.dart' as _i15;
import '../presentation/register/cubit/confirm_password_cubit/confirm_password_cubit.dart'
    as _i3;
import '../presentation/register/cubit/email_input_cubit.dart' as _i4;
import '../presentation/register/cubit/password_input_cubit.dart' as _i5;
import '../presentation/register/cubit/username_input_cubit.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final navigatorKeyManagerModule = _$NavigatorKeyManagerModule();
    gh.factory<_i3.ConfirmPasswordCubit>(() => _i3.ConfirmPasswordCubit());
    gh.factory<_i4.EmailInputCubit>(() => _i4.EmailInputCubit());
    gh.factory<_i5.PasswordInputCubit>(() => _i5.PasswordInputCubit());
    gh.factory<_i6.UserNameInputCubit>(() => _i6.UserNameInputCubit());
    gh.lazySingleton<_i7.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i8.Logger>(() => appModule.logger);
    gh.lazySingleton<_i9.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i10.GlobalBlocObserver>(
        () => _i10.GlobalBlocObserver(gh<_i8.Logger>()));
    gh.singleton<_i11.SupabaseAuthClient>(
        () => _i11.SupabaseAuthClient(gh<_i7.SupabaseClient>()));
    gh.lazySingleton<_i12.AuthenticationRepository>(
        () => _i13.SupabaseUserRepository(gh<_i11.SupabaseAuthClient>()));
    gh.factory<_i14.AuthBLoc>(
        () => _i14.AuthBLoc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i15.RegistrationBloc>(
        () => _i15.RegistrationBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i16.AppRouter>(() => _i16.AppRouter(
          gh<_i9.NavigatorKeyManager>(),
          gh<_i7.SupabaseClient>(),
        ));
    gh.factory<_i17.LoginBloc>(
        () => _i17.LoginBloc(gh<_i12.AuthenticationRepository>()));
    return this;
  }
}

class _$AppModule extends _i18.AppModule {}

class _$NavigatorKeyManagerModule extends _i19.NavigatorKeyManagerModule {}
