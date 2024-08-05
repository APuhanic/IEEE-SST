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
import '../data/repositories/supabase_announcement_repository.dart' as _i19;
import '../data/repositories/supabase_auth_repository.dart' as _i14;
import '../data/repositories/supabase_event_repository.dart' as _i23;
import '../data/repositories/supabase_profile_repository.dart' as _i20;
import '../data/repositories/supabase_sponsor_repository.dart' as _i21;
import '../data/router/navigator_key_manager.dart' as _i6;
import '../data/router/router.dart' as _i17;
import '../data/supabase/supabase_announcement_api.dart' as _i8;
import '../data/supabase/supabase_auth_api.dart' as _i3;
import '../data/supabase/supabase_event_api.dart' as _i9;
import '../data/supabase/supabase_post_api.dart' as _i12;
import '../data/supabase/supabase_profile_api.dart' as _i10;
import '../data/supabase/supabase_sponsor_api.dart' as _i11;
import '../domain/modules/app_module.dart' as _i31;
import '../domain/modules/navigator_key_manager_module.dart' as _i32;
import '../domain/repositories/auth/auth_repository.dart' as _i13;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i26;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i30;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i25;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i22;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i28;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i27;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i29;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i24;
import '../presentation/login/bloc/auth_bloc.dart' as _i15;
import '../presentation/login/bloc/login/login_bloc.dart' as _i18;
import '../presentation/register/bloc/registration_bloc.dart' as _i16;

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
    gh.lazySingleton<_i3.SupabaseAuthApi>(() => _i3.SupabaseAuthApi());
    gh.lazySingleton<_i4.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i5.Logger>(() => appModule.logger);
    gh.lazySingleton<_i6.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i7.GlobalBlocObserver>(
        () => _i7.GlobalBlocObserver(gh<_i5.Logger>()));
    gh.factory<_i8.SupabaseAnnouncementApi>(
        () => _i8.SupabaseAnnouncementApi(gh<_i4.SupabaseClient>()));
    gh.factory<_i9.SupabaseEventApi>(
        () => _i9.SupabaseEventApi(gh<_i4.SupabaseClient>()));
    gh.factory<_i10.SupabaseProfileApi>(
        () => _i10.SupabaseProfileApi(gh<_i4.SupabaseClient>()));
    gh.factory<_i11.SupabaseSponsorApi>(
        () => _i11.SupabaseSponsorApi(gh<_i4.SupabaseClient>()));
    gh.factory<_i12.SupabaseAnnouncementApi>(
        () => _i12.SupabaseAnnouncementApi(gh<_i4.SupabaseClient>()));
    gh.lazySingleton<_i13.AuthenticationRepository>(
        () => _i14.SupabaseAuthRepository(
              gh<_i4.SupabaseClient>(),
              gh<_i10.SupabaseProfileApi>(),
            ));
    gh.factory<_i15.AuthBloc>(
        () => _i15.AuthBloc(gh<_i13.AuthenticationRepository>()));
    gh.factory<_i16.RegistrationBloc>(
        () => _i16.RegistrationBloc(gh<_i13.AuthenticationRepository>()));
    gh.factory<_i17.AppRouter>(() => _i17.AppRouter(
          gh<_i6.NavigatorKeyManager>(),
          gh<_i4.SupabaseClient>(),
        ));
    gh.factory<_i18.LoginBloc>(
        () => _i18.LoginBloc(gh<_i13.AuthenticationRepository>()));
    gh.lazySingleton<_i19.SupabaseAnnouncementRepository>(() =>
        _i19.SupabaseAnnouncementRepository(gh<_i8.SupabaseAnnouncementApi>()));
    gh.lazySingleton<_i20.SupabaseProfileRepository>(
        () => _i20.SupabaseProfileRepository(gh<_i10.SupabaseProfileApi>()));
    gh.lazySingleton<_i21.SupabaseSponsorRepository>(
        () => _i21.SupabaseSponsorRepository(gh<_i11.SupabaseSponsorApi>()));
    gh.factory<_i22.AnnouncementBloc>(
        () => _i22.AnnouncementBloc(gh<_i19.SupabaseAnnouncementRepository>()));
    gh.lazySingleton<_i23.SupabaseEventRepository>(
        () => _i23.SupabaseEventRepository(gh<_i9.SupabaseEventApi>()));
    gh.factory<_i24.SponsorManagmentBloc>(
        () => _i24.SponsorManagmentBloc(gh<_i21.SupabaseSponsorRepository>()));
    gh.factory<_i25.SponsorFormBloc>(
        () => _i25.SponsorFormBloc(gh<_i21.SupabaseSponsorRepository>()));
    gh.factory<_i26.AnnouncementFormBloc>(() =>
        _i26.AnnouncementFormBloc(gh<_i19.SupabaseAnnouncementRepository>()));
    gh.factory<_i27.EventsManagmentBloc>(
        () => _i27.EventsManagmentBloc(gh<_i23.SupabaseEventRepository>()));
    gh.factory<_i28.AttendeesBloc>(
        () => _i28.AttendeesBloc(gh<_i20.SupabaseProfileRepository>()));
    gh.factory<_i29.ProfileBloc>(
        () => _i29.ProfileBloc(gh<_i20.SupabaseProfileRepository>()));
    gh.factory<_i30.EventFormBloc>(
        () => _i30.EventFormBloc(gh<_i23.SupabaseEventRepository>()));
    return this;
  }
}

class _$AppModule extends _i31.AppModule {}

class _$NavigatorKeyManagerModule extends _i32.NavigatorKeyManagerModule {}
