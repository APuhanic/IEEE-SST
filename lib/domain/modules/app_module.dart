import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class AppModule {
  @lazySingleton
  SupabaseClient get supabase => Supabase.instance.client;
  @lazySingleton
  Logger get logger => Logger();
}
