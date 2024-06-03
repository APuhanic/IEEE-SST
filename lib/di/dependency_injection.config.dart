// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

import '../data/providers/global_bloc_observer.dart' as _i7;
import '../data/repositories/supabase_auth_repository.dart' as _i9;
import '../data/repositories/supabase_event_repository.dart' as _i14;
import '../data/repositories/supabase_profile_repository.dart' as _i15;
import '../data/router/navigator_key_manager.dart' as _i6;
import '../data/router/router.dart' as _i12;
import '../data/supabase/supabase_api.dart' as _i3;
import '../domain/modules/app_module.dart' as _i18;
import '../domain/modules/navigator_key_manager_module.dart' as _i19;
import '../domain/repositories/auth/auth_repository.dart' as _i8;
import '../presentation/admin/admin_event_managment_screen/bloc/create_event_bloc.dart'
    as _i16;
import '../presentation/common/bloc/events_bloc.dart' as _i17;
import '../presentation/login/bloc/auth_bloc.dart' as _i10;
import '../presentation/login/bloc/login/login_bloc.dart' as _i13;
import '../presentation/register/bloc/registration_bloc.dart' as _i11;

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
    gh.lazySingleton<_i3.SupabaseApi>(() => _i3.SupabaseApi());
    gh.lazySingleton<_i4.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i5.Logger>(() => appModule.logger);
    gh.lazySingleton<_i6.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i7.GlobalBlocObserver>(
        () => _i7.GlobalBlocObserver(gh<_i5.Logger>()));
    gh.lazySingleton<_i8.AuthenticationRepository>(
        () => _i9.SupabaseAuthRepository(gh<_i4.SupabaseClient>()));
    gh.factory<_i10.AuthBloc>(
        () => _i10.AuthBloc(gh<_i8.AuthenticationRepository>()));
    gh.factory<_i11.RegistrationBloc>(
        () => _i11.RegistrationBloc(gh<_i8.AuthenticationRepository>()));
    gh.factory<_i12.AppRouter>(() => _i12.AppRouter(
          gh<_i6.NavigatorKeyManager>(),
          gh<_i4.SupabaseClient>(),
        ));
    gh.factory<_i13.LoginBloc>(
        () => _i13.LoginBloc(gh<_i8.AuthenticationRepository>()));
    gh.lazySingleton<_i14.SupabaseEventRepository>(
        () => _i14.SupabaseEventRepository(gh<_i3.SupabaseApi>()));
    gh.lazySingleton<_i15.SupabaseProfileRepository>(
        () => _i15.SupabaseProfileRepository(gh<_i3.SupabaseApi>()));
    gh.factory<_i16.CreateEventBloc>(
        () => _i16.CreateEventBloc(gh<_i14.SupabaseEventRepository>()));
    gh.factory<_i17.EventsManagmentBloc>(
        () => _i17.EventsManagmentBloc(gh<_i14.SupabaseEventRepository>()));
    return this;
  }
}

class _$AppModule extends _i18.AppModule {}

class _$NavigatorKeyManagerModule extends _i19.NavigatorKeyManagerModule {}
