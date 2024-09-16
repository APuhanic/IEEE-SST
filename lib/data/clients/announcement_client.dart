import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class AnnouncementClient {
  AnnouncementClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> postAnnouncement(
    String title,
    String description,
  ) async {
    await _supabaseClient.from('announcements').insert({
      'title': title,
      'description': description,
      'postedby': _supabaseClient.auth.currentUser?.id,
    });
  }

  Future<List<Map<String, dynamic>>> fetchAnnouncements() async =>
      await _supabaseClient.rpc('get_announcements_with_profiles').select();

  Future<void> updateAnnouncemets(Map<String, dynamic> announcement) async =>
      await _supabaseClient.from('announcements').upsert(announcement);

  Future<void> deleteAnnouncement(String announcementId) async =>
      await _supabaseClient
          .from('announcements')
          .delete()
          .eq('id', announcementId);

  Future<void> updateAnnouncement(Announcement announcement) async =>
      await _supabaseClient.from('announcements').update(
        {
          'title': announcement.title,
          'description': announcement.description,
        },
      ).eq('id', announcement.id!);
}
