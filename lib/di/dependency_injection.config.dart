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

import '../data/providers/global_bloc_observer.dart' as _i7;
import '../data/repositories/supabase_auth_repository.dart' as _i10;
import '../data/repositories/supabase_profile_repository.dart' as _i6;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i13;
import '../data/supabase/supabase_api.dart' as _i8;
import '../domain/modules/app_module.dart' as _i15;
import '../domain/modules/navigator_key_manager_module.dart' as _i16;
import '../domain/repositories/auth/auth_repository.dart' as _i9;
import '../presentation/login/bloc/auth_bloc.dart' as _i11;
import '../presentation/login/bloc/login/login_bloc.dart' as _i14;
import '../presentation/register/bloc/registration_bloc.dart' as _i12;

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
    gh.lazySingleton<_i6.SupabaseProfileRepository>(
        () => _i6.SupabaseProfileRepository());
    gh.singleton<_i7.GlobalBlocObserver>(
        () => _i7.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.lazySingleton<_i8.SupabaseApi>(
        () => _i8.SupabaseApi(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i9.AuthenticationRepository>(
        () => _i10.SupabaseAuthRepository(gh<_i3.SupabaseClient>()));
    gh.factory<_i11.AuthBloc>(
        () => _i11.AuthBloc(gh<_i9.AuthenticationRepository>()));
    gh.factory<_i12.RegistrationBloc>(
        () => _i12.RegistrationBloc(gh<_i9.AuthenticationRepository>()));
    gh.factory<_i13.AppRouter>(() => _i13.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i14.LoginBloc>(
        () => _i14.LoginBloc(gh<_i9.AuthenticationRepository>()));
    return this;
  }
}

class _$AppModule extends _i15.AppModule {}

class _$NavigatorKeyManagerModule extends _i16.NavigatorKeyManagerModule {}
