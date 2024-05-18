// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:supabase_flutter/supabase_flutter.dart' as _i6;

import '../data/providers/global_bloc_observer.dart' as _i9;
import '../data/repositories/supabase_auth_repository.dart' as _i11;
import '../data/router/navigator_key_manager.dart' as _i8;
import '../data/router/router.dart' as _i12;
import '../domain/modules/app_module.dart' as _i14;
import '../domain/modules/navigator_key_manager_module.dart' as _i15;
import '../domain/repositories/auth/auth_repository.dart' as _i10;
import '../presentation/register/bloc/registration_bloc.dart' as _i13;
import '../presentation/register/cubit/email_input_cubit.dart' as _i3;
import '../presentation/register/cubit/password_input_cubit.dart' as _i4;
import '../presentation/register/cubit/username_input_cubit.dart' as _i5;

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
    gh.factory<_i3.EmailInputCubit>(() => _i3.EmailInputCubit());
    gh.factory<_i4.PasswordInputCubit>(() => _i4.PasswordInputCubit());
    gh.factory<_i5.UserNameInputCubit>(() => _i5.UserNameInputCubit());
    gh.lazySingleton<_i6.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i7.Logger>(() => appModule.logger);
    gh.lazySingleton<_i8.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i9.GlobalBlocObserver>(
        () => _i9.GlobalBlocObserver(gh<_i7.Logger>()));
    gh.lazySingleton<_i10.AuthenticationRepository>(
        () => _i11.SupabaseAuthenticationRepository(gh<_i6.SupabaseClient>()));
    gh.factory<_i12.AppRouter>(
        () => _i12.AppRouter(gh<_i8.NavigatorKeyManager>()));
    gh.factory<_i13.RegistrationBloc>(
        () => _i13.RegistrationBloc(gh<_i10.AuthenticationRepository>()));
    return this;
  }
}

class _$AppModule extends _i14.AppModule {}

class _$NavigatorKeyManagerModule extends _i15.NavigatorKeyManagerModule {}
