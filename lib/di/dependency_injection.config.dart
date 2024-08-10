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
import 'package:supabase_auth_ui/supabase_auth_ui.dart' as _i19;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/clients/announcement_client.dart' as _i8;
import '../data/clients/comment_client.dart' as _i13;
import '../data/clients/event_client.dart' as _i9;
import '../data/clients/post_client.dart' as _i10;
import '../data/clients/profile_client.dart' as _i11;
import '../data/clients/sponsor_client.dart' as _i12;
import '../data/providers/global_bloc_observer.dart' as _i6;
import '../data/repositories/announcement_repository.dart' as _i20;
import '../data/repositories/auth_repository.dart' as _i16;
import '../data/repositories/comments_repository.dart' as _i14;
import '../data/repositories/event_repository.dart' as _i18;
import '../data/repositories/post_repository.dart' as _i25;
import '../data/repositories/profile_repository.dart' as _i23;
import '../data/repositories/sponsor_repository.dart' as _i17;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i7;
import '../domain/modules/app_module.dart' as _i38;
import '../domain/modules/navigator_key_manager_module.dart' as _i39;
import '../domain/repositories/auth/auth_repository.dart' as _i15;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i22;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i32;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i29;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i24;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i33;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i26;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i34;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i21;
import '../presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart'
    as _i27;
import '../presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart'
    as _i28;
import '../presentation/info/question_posts/bloc/post_form_bloc.dart' as _i36;
import '../presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart'
    as _i37;
import '../presentation/login/bloc/auth_bloc.dart' as _i30;
import '../presentation/login/bloc/login/login_bloc.dart' as _i35;
import '../presentation/register/bloc/registration_bloc.dart' as _i31;

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
    gh.factory<_i7.AppRouter>(() => _i7.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i8.AnnouncementClient>(
        () => _i8.AnnouncementClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i9.EventClient>(
        () => _i9.EventClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i10.PostsClient>(
        () => _i10.PostsClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i11.ProfileClient>(
        () => _i11.ProfileClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i12.SponsorClient>(
        () => _i12.SponsorClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i13.CommentClient>(
        () => _i13.CommentClient(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i14.CommentsRepository>(() => _i14.CommentsRepository(
          gh<_i13.CommentClient>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i15.AuthenticationRepository>(() => _i16.AuthRepository(
          gh<_i3.SupabaseClient>(),
          gh<_i11.ProfileClient>(),
        ));
    gh.lazySingleton<_i17.SponsorRepository>(
        () => _i17.SponsorRepository(gh<_i12.SponsorClient>()));
    gh.lazySingleton<_i18.EventRepository>(() => _i18.EventRepository(
          gh<_i9.EventClient>(),
          gh<_i19.SupabaseClient>(),
        ));
    gh.lazySingleton<_i20.AnnouncementRepository>(
        () => _i20.AnnouncementRepository(gh<_i8.AnnouncementClient>()));
    gh.factory<_i21.SponsorManagmentBloc>(
        () => _i21.SponsorManagmentBloc(gh<_i17.SponsorRepository>()));
    gh.factory<_i22.AnnouncementFormBloc>(
        () => _i22.AnnouncementFormBloc(gh<_i20.AnnouncementRepository>()));
    gh.lazySingleton<_i23.ProfileRepository>(
        () => _i23.ProfileRepository(gh<_i11.ProfileClient>()));
    gh.factory<_i24.AnnouncementBloc>(
        () => _i24.AnnouncementBloc(gh<_i20.AnnouncementRepository>()));
    gh.lazySingleton<_i25.PostRepository>(
        () => _i25.PostRepository(gh<_i10.PostsClient>()));
    gh.factory<_i26.EventsManagmentBloc>(
        () => _i26.EventsManagmentBloc(gh<_i18.EventRepository>()));
    gh.factory<_i27.CommentFormBloc>(
        () => _i27.CommentFormBloc(gh<_i14.CommentsRepository>()));
    gh.factory<_i28.CommentManagmentBloc>(
        () => _i28.CommentManagmentBloc(gh<_i14.CommentsRepository>()));
    gh.factory<_i29.SponsorFormBloc>(
        () => _i29.SponsorFormBloc(gh<_i17.SponsorRepository>()));
    gh.factory<_i30.AuthBloc>(
        () => _i30.AuthBloc(gh<_i15.AuthenticationRepository>()));
    gh.factory<_i31.RegistrationBloc>(
        () => _i31.RegistrationBloc(gh<_i15.AuthenticationRepository>()));
    gh.factory<_i32.EventFormBloc>(
        () => _i32.EventFormBloc(gh<_i18.EventRepository>()));
    gh.factory<_i33.AttendeesBloc>(
        () => _i33.AttendeesBloc(gh<_i23.ProfileRepository>()));
    gh.factory<_i34.ProfileBloc>(
        () => _i34.ProfileBloc(gh<_i23.ProfileRepository>()));
    gh.factory<_i35.LoginBloc>(
        () => _i35.LoginBloc(gh<_i15.AuthenticationRepository>()));
    gh.factory<_i36.PostFormBloc>(
        () => _i36.PostFormBloc(gh<_i25.PostRepository>()));
    gh.factory<_i37.PostManagmentBloc>(
        () => _i37.PostManagmentBloc(gh<_i25.PostRepository>()));
    return this;
  }
}

class _$AppModule extends _i38.AppModule {}

class _$NavigatorKeyManagerModule extends _i39.NavigatorKeyManagerModule {}
