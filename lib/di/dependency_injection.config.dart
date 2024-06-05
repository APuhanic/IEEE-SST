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
import '../data/repositories/supabase_event_repository.dart' as _i16;
import '../data/repositories/supabase_profile_repository.dart' as _i15;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i13;
import '../data/supabase/supabase_api.dart' as _i9;
import '../data/supabase/supabase_event_api.dart' as _i10;
import '../domain/modules/app_module.dart' as _i19;
import '../domain/modules/navigator_key_manager_module.dart' as _i20;
import '../domain/repositories/auth/auth_repository.dart' as _i7;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i18;
import '../presentation/common/bloc/events_bloc.dart' as _i17;
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
    gh.singleton<_i6.GlobalBlocObserver>(
        () => _i6.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.lazySingleton<_i7.AuthenticationRepository>(
        () => _i8.SupabaseAuthRepository(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i9.SupabaseProfileApi>(
        () => _i9.SupabaseProfileApi(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i10.SupabaseEventApi>(
        () => _i10.SupabaseEventApi(gh<_i3.SupabaseClient>()));
    gh.factory<_i11.AuthBloc>(
        () => _i11.AuthBloc(gh<_i7.AuthenticationRepository>()));
    gh.factory<_i12.RegistrationBloc>(
        () => _i12.RegistrationBloc(gh<_i7.AuthenticationRepository>()));
    gh.factory<_i13.AppRouter>(() => _i13.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i14.LoginBloc>(
        () => _i14.LoginBloc(gh<_i7.AuthenticationRepository>()));
    gh.lazySingleton<_i15.SupabaseProfileRepository>(
        () => _i15.SupabaseProfileRepository(gh<_i9.SupabaseProfileApi>()));
    gh.lazySingleton<_i16.SupabaseEventRepository>(
        () => _i16.SupabaseEventRepository(gh<_i10.SupabaseEventApi>()));
    gh.factory<_i17.EventsManagmentBloc>(
        () => _i17.EventsManagmentBloc(gh<_i16.SupabaseEventRepository>()));
    gh.factory<_i18.EventFormBloc>(
        () => _i18.EventFormBloc(gh<_i16.SupabaseEventRepository>()));
    return this;
  }
}

class _$AppModule extends _i19.AppModule {}

class _$NavigatorKeyManagerModule extends _i20.NavigatorKeyManagerModule {}
