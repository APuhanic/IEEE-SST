// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i14;
import 'package:hive_flutter/adapters.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i6;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase_auth_ui/supabase_auth_ui.dart' as _i10;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/clients/announcement_client.dart' as _i15;
import '../data/clients/comment_client.dart' as _i16;
import '../data/clients/document_client.dart' as _i17;
import '../data/clients/event_client.dart' as _i18;
import '../data/clients/post_client.dart' as _i19;
import '../data/clients/profile_client.dart' as _i9;
import '../data/clients/sponsor_client.dart' as _i20;
import '../data/local_storage/announcement_local_storage.dart' as _i21;
import '../data/local_storage/comment_local_storage.dart' as _i22;
import '../data/local_storage/event_local_storage.dart' as _i23;
import '../data/local_storage/key_value_storage.dart' as _i13;
import '../data/local_storage/profile_local_storage.dart' as _i24;
import '../data/providers/global_bloc_observer.dart' as _i8;
import '../data/repositories/announcement_repository.dart' as _i31;
import '../data/repositories/auth_repository.dart' as _i28;
import '../data/repositories/comments_repository.dart' as _i26;
import '../data/repositories/document_repository.dart' as _i37;
import '../data/repositories/event_repository.dart' as _i40;
import '../data/repositories/post_repository.dart' as _i36;
import '../data/repositories/profile_repository.dart' as _i34;
import '../data/repositories/sponsor_repository.dart' as _i30;
import '../data/router/navigator_key_manager.dart' as _i7;
import '../data/router/router.dart' as _i12;
import '../domain/modules/app_module.dart' as _i53;
import '../domain/modules/navigator_key_manager_module.dart' as _i54;
import '../domain/repositories/auth/auth_repository.dart' as _i27;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i33;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i48;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i43;
import '../presentation/admin/admin_user_managment/bloc/user_managment_bloc.dart'
    as _i44;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i35;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i49;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i47;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i50;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i32;
import '../presentation/common/cubit/cubit/auth_session_cubit.dart' as _i11;
import '../presentation/documents/bloc/document_form_bloc/document_form_bloc.dart'
    as _i38;
import '../presentation/documents/bloc/document_managment_bloc/document_managment_bloc.dart'
    as _i39;
import '../presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart'
    as _i41;
import '../presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart'
    as _i42;
import '../presentation/info/question_posts/bloc/post_form_bloc/post_form_bloc.dart'
    as _i51;
import '../presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart'
    as _i52;
import '../presentation/login/bloc/auth_bloc.dart' as _i45;
import '../presentation/login/bloc/login/login_bloc.dart' as _i29;
import '../presentation/register/bloc/registration_bloc.dart' as _i46;
import '../util/connection_checker.dart' as _i25;

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
    gh.lazySingleton<_i5.HiveInterface>(() => appModule.hive);
    gh.lazySingleton<_i6.InternetConnection>(
        () => appModule.internetConnectionChecker);
    gh.lazySingleton<_i7.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i8.GlobalBlocObserver>(
        () => _i8.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.factory<_i9.ProfileClient>(
        () => _i9.ProfileClient(gh<_i10.SupabaseClient>()));
    gh.factory<_i11.AuthSessionCubit>(
        () => _i11.AuthSessionCubit(gh<_i10.SupabaseClient>()));
    gh.factory<_i12.AppRouter>(() => _i12.AppRouter(
          gh<_i7.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i13.KeyValueStorage>(
        () => _i13.KeyValueStorage(gh<_i14.HiveInterface>()));
    gh.factory<_i15.AnnouncementClient>(
        () => _i15.AnnouncementClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i16.CommentClient>(
        () => _i16.CommentClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i17.DocumentClient>(
        () => _i17.DocumentClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i18.EventClient>(
        () => _i18.EventClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i19.PostsClient>(
        () => _i19.PostsClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i20.SponsorClient>(
        () => _i20.SponsorClient(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i21.AnnouncementLocalStorage>(
        () => _i21.AnnouncementLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i22.CommentLocalStorage>(
        () => _i22.CommentLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i23.EventLocalStorage>(
        () => _i23.EventLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i24.ProfileLocalStorage>(
        () => _i24.ProfileLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.singleton<_i25.ConnectionChecker>(
        () => _i25.ConnectionChecker(gh<_i6.InternetConnection>()));
    gh.lazySingleton<_i26.CommentsRepository>(() => _i26.CommentsRepository(
          gh<_i16.CommentClient>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i27.AuthenticationRepository>(() => _i28.AuthRepository(
          gh<_i3.SupabaseClient>(),
          gh<_i9.ProfileClient>(),
        ));
    gh.factory<_i29.LoginBloc>(
        () => _i29.LoginBloc(gh<_i27.AuthenticationRepository>()));
    gh.lazySingleton<_i30.SponsorRepository>(
        () => _i30.SponsorRepository(gh<_i20.SponsorClient>()));
    gh.lazySingleton<_i31.AnnouncementRepository>(
        () => _i31.AnnouncementRepository(gh<_i15.AnnouncementClient>()));
    gh.factory<_i32.SponsorManagmentBloc>(
        () => _i32.SponsorManagmentBloc(gh<_i30.SponsorRepository>()));
    gh.factory<_i33.AnnouncementFormBloc>(
        () => _i33.AnnouncementFormBloc(gh<_i31.AnnouncementRepository>()));
    gh.lazySingleton<_i34.ProfileRepository>(
        () => _i34.ProfileRepository(gh<_i9.ProfileClient>()));
    gh.factory<_i35.AnnouncementBloc>(
        () => _i35.AnnouncementBloc(gh<_i31.AnnouncementRepository>()));
    gh.lazySingleton<_i36.PostRepository>(
        () => _i36.PostRepository(gh<_i19.PostsClient>()));
    gh.lazySingleton<_i37.DocumentRepository>(
        () => _i37.DocumentRepository(gh<_i17.DocumentClient>()));
    gh.factory<_i38.DocumentFormBloc>(
        () => _i38.DocumentFormBloc(gh<_i37.DocumentRepository>()));
    gh.factory<_i39.DocumentManagmentBloc>(
        () => _i39.DocumentManagmentBloc(gh<_i37.DocumentRepository>()));
    gh.lazySingleton<_i40.EventRepository>(() => _i40.EventRepository(
          gh<_i18.EventClient>(),
          gh<_i10.SupabaseClient>(),
          gh<_i23.EventLocalStorage>(),
          gh<_i25.ConnectionChecker>(),
        ));
    gh.factory<_i41.CommentFormBloc>(
        () => _i41.CommentFormBloc(gh<_i26.CommentsRepository>()));
    gh.factory<_i42.CommentManagmentBloc>(
        () => _i42.CommentManagmentBloc(gh<_i26.CommentsRepository>()));
    gh.factory<_i43.SponsorFormBloc>(
        () => _i43.SponsorFormBloc(gh<_i30.SponsorRepository>()));
    gh.factory<_i44.UserManagmentBloc>(
        () => _i44.UserManagmentBloc(gh<_i34.ProfileRepository>()));
    gh.factory<_i45.AuthBloc>(
        () => _i45.AuthBloc(gh<_i27.AuthenticationRepository>()));
    gh.factory<_i46.RegistrationBloc>(
        () => _i46.RegistrationBloc(gh<_i27.AuthenticationRepository>()));
    gh.factory<_i47.EventsManagmentBloc>(
        () => _i47.EventsManagmentBloc(gh<_i40.EventRepository>()));
    gh.factory<_i48.EventFormBloc>(
        () => _i48.EventFormBloc(gh<_i40.EventRepository>()));
    gh.factory<_i49.AttendeesBloc>(
        () => _i49.AttendeesBloc(gh<_i34.ProfileRepository>()));
    gh.factory<_i50.ProfileBloc>(
        () => _i50.ProfileBloc(gh<_i34.ProfileRepository>()));
    gh.factory<_i51.PostFormBloc>(
        () => _i51.PostFormBloc(gh<_i36.PostRepository>()));
    gh.factory<_i52.PostManagmentBloc>(
        () => _i52.PostManagmentBloc(gh<_i36.PostRepository>()));
    return this;
  }
}

class _$AppModule extends _i53.AppModule {}

class _$NavigatorKeyManagerModule extends _i54.NavigatorKeyManagerModule {}
