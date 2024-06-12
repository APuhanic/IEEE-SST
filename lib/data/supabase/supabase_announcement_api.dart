import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class SupabaseAnnouncementApi {
  SupabaseAnnouncementApi(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> postAnnouncement(
    String title,
    String description,
  ) async {
    try {
      await _supabaseClient.from('announcements').insert({
        'title': title,
        'description': description,
        'postedby': _supabaseClient.auth.currentUser?.id,
      });
    } catch (e) {
      //TODO: Add proper error handling
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> fetchAnnouncements() async =>
      await _supabaseClient.rpc('get_announcements_with_profiles').select();

  Future<void> updateAnnouncemets(Map<String, dynamic> event) async {
    try {
      await _supabaseClient.from('announcements').upsert(event);
    } catch (e) {
      throw Exception(e);
    }
  }
}
