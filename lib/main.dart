import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ieee_sst/app.dart';
import 'package:ieee_sst/data/providers/global_bloc_observer.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await dotenv.load();

  await Firebase.initializeApp();

  await FirebaseMessaging.instance.requestPermission();

  // Notifcation handling

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    getIt<Logger>().d('Handling a message: ${message.messageId}');
    //display the notification
    if (message.notification != null) {
      getIt<Logger>().d('Handling a message: ${message.notification!.title}');
    }
  });
  await Supabase.initialize(
    url: dotenv.env['URL']!,
    anonKey: dotenv.env['API_KEY']!,
  );

  configureDependencies(Environment.dev);
  Bloc.observer = getIt<GlobalBlocObserver>();

  runApp(MainApp());

  // Handle uncaught errors
  FlutterError.onError = (FlutterErrorDetails details) =>
      getIt<Logger>().e('Unhandled Flutter error: ${details.exception}');
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  getIt<Logger>().d('Handling a background message: ${message.messageId}');
}
