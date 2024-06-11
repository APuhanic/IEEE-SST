import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class SupabaseAnnouncementApi {
  final SupabaseClient _supabaseClient;

  SupabaseAnnouncementApi(this._supabaseClient);

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
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> fetchAnnouncements() async =>
      Supabase.instance.client.from('announcements').select();

  Future<void> deleteEvent(String eventId) async {
    try {
      await _supabaseClient.from('events').delete().eq('id', eventId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateAnnouncemets(Map<String, dynamic> event) async {
    try {
      await _supabaseClient.from('announcements').upsert(event);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
