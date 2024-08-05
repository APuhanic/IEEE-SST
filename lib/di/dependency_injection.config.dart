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

import '../data/clients/announcement_client.dart' as _i7;
import '../data/clients/event_client.dart' as _i8;
import '../data/clients/post_client.dart' as _i9;
import '../data/clients/profile_client.dart' as _i10;
import '../data/clients/sponsor_client.dart' as _i11;
import '../data/providers/global_bloc_observer.dart' as _i6;
import '../data/repositories/announcement_repository.dart' as _i16;
import '../data/repositories/auth_repository.dart' as _i14;
import '../data/repositories/event_repository.dart' as _i20;
import '../data/repositories/post_repository.dart' as _i21;
import '../data/repositories/profile_repository.dart' as _i19;
import '../data/repositories/sponsor_repository.dart' as _i15;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i12;
import '../domain/modules/app_module.dart' as _i33;
import '../domain/modules/navigator_key_manager_module.dart' as _i34;
import '../domain/repositories/auth/auth_repository.dart' as _i13;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i18;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i27;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i24;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i22;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i28;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i23;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i29;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i17;
import '../presentation/info/question_posts/bloc/post_form_bloc.dart' as _i31;
import '../presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart'
    as _i32;
import '../presentation/login/bloc/auth_bloc.dart' as _i25;
import '../presentation/login/bloc/login/login_bloc.dart' as _i30;
import '../presentation/register/bloc/registration_bloc.dart' as _i26;

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
    gh.factory<_i7.AnnouncementClient>(
        () => _i7.AnnouncementClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i8.EventClient>(
        () => _i8.EventClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i9.PostsClient>(
        () => _i9.PostsClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i10.ProfileClient>(
        () => _i10.ProfileClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i11.SponsorClient>(
        () => _i11.SponsorClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i12.AppRouter>(() => _i12.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i13.AuthenticationRepository>(() => _i14.AuthRepository(
          gh<_i3.SupabaseClient>(),
          gh<_i10.ProfileClient>(),
        ));
    gh.lazySingleton<_i15.SponsorRepository>(
        () => _i15.SponsorRepository(gh<_i11.SponsorClient>()));
    gh.lazySingleton<_i16.AnnouncementRepository>(
        () => _i16.AnnouncementRepository(gh<_i7.AnnouncementClient>()));
    gh.factory<_i17.SponsorManagmentBloc>(
        () => _i17.SponsorManagmentBloc(gh<_i15.SponsorRepository>()));
    gh.factory<_i18.AnnouncementFormBloc>(
        () => _i18.AnnouncementFormBloc(gh<_i16.AnnouncementRepository>()));
    gh.lazySingleton<_i19.ProfileRepository>(
        () => _i19.ProfileRepository(gh<_i10.ProfileClient>()));
    gh.lazySingleton<_i20.EventRepository>(
        () => _i20.EventRepository(gh<_i8.EventClient>()));
    gh.lazySingleton<_i21.PostRepository>(
        () => _i21.PostRepository(gh<_i9.PostsClient>()));
    gh.factory<_i22.AnnouncementBloc>(
        () => _i22.AnnouncementBloc(gh<_i16.AnnouncementRepository>()));
    gh.factory<_i23.EventsManagmentBloc>(
        () => _i23.EventsManagmentBloc(gh<_i20.EventRepository>()));
    gh.factory<_i24.SponsorFormBloc>(
        () => _i24.SponsorFormBloc(gh<_i15.SponsorRepository>()));
    gh.factory<_i25.AuthBloc>(
        () => _i25.AuthBloc(gh<_i13.AuthenticationRepository>()));
    gh.factory<_i26.RegistrationBloc>(
        () => _i26.RegistrationBloc(gh<_i13.AuthenticationRepository>()));
    gh.factory<_i27.EventFormBloc>(
        () => _i27.EventFormBloc(gh<_i20.EventRepository>()));
    gh.factory<_i28.AttendeesBloc>(
        () => _i28.AttendeesBloc(gh<_i19.ProfileRepository>()));
    gh.factory<_i29.ProfileBloc>(
        () => _i29.ProfileBloc(gh<_i19.ProfileRepository>()));
    gh.factory<_i30.LoginBloc>(
        () => _i30.LoginBloc(gh<_i13.AuthenticationRepository>()));
    gh.factory<_i31.PostFormBloc>(
        () => _i31.PostFormBloc(gh<_i21.PostRepository>()));
    gh.factory<_i32.PostManagmentBloc>(
        () => _i32.PostManagmentBloc(gh<_i21.PostRepository>()));
    return this;
  }
}

class _$AppModule extends _i33.AppModule {}

class _$NavigatorKeyManagerModule extends _i34.NavigatorKeyManagerModule {}
