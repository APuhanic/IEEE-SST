// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/providers/global_bloc_observer.dart' as _i6;
import '../data/repositories/supabase_auth_repository.dart' as _i8;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i11;
import '../domain/modules/app_module.dart' as _i13;
import '../domain/modules/navigator_key_manager_module.dart' as _i14;
import '../domain/repositories/auth/auth_repository.dart' as _i7;
import '../presentation/login/bloc/auth_bloc.dart' as _i9;
import '../presentation/login/bloc/login/login_bloc.dart' as _i12;
import '../presentation/register/bloc/registration_bloc.dart' as _i10;

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
    gh.lazySingleton<_i3.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i4.Logger>(() => appModule.logger);
    gh.lazySingleton<_i5.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i6.GlobalBlocObserver>(
        () => _i6.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.lazySingleton<_i7.AuthenticationRepository>(
        () => _i8.SupabaseAuthRepository(gh<_i3.SupabaseClient>()));
    gh.factory<_i9.AuthBloc>(
        () => _i9.AuthBloc(gh<_i7.AuthenticationRepository>()));
    gh.factory<_i10.RegistrationBloc>(
        () => _i10.RegistrationBloc(gh<_i7.AuthenticationRepository>()));
    gh.factory<_i11.AppRouter>(() => _i11.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i12.LoginBloc>(
        () => _i12.LoginBloc(gh<_i7.AuthenticationRepository>()));
    return this;
  }
}

class _$AppModule extends _i13.AppModule {}

class _$NavigatorKeyManagerModule extends _i14.NavigatorKeyManagerModule {}
