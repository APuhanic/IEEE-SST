import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class SupabaseUser extends supabase.User implements BaseUserModel {
  SupabaseUser({
    required super.id,
    required super.email,
    required super.appMetadata,
    required super.userMetadata,
    required super.aud,
    required super.createdAt,
  });

  @override
  String get email => super.email!;

  SupabaseUser.fromJson(Map<String, dynamic> json)
      : super(
          id: json['id'] as String,
          email: json['email'] as String,
          appMetadata: json['app_metadata'] as Map<String, dynamic>,
          userMetadata: json['user_metadata'] as Map<String, dynamic>,
          aud: json['aud'] as String,
          createdAt: json['created_at'] as String,
        );
}
