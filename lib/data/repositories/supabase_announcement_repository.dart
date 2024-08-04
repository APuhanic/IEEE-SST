import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/supabase/supabase_announcement_api.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseAnnouncementRepository {
  final SupabaseAnnouncementApi _supabaseAnnouncementApi;

  SupabaseAnnouncementRepository(this._supabaseAnnouncementApi);

  Future<List<Announcement>> getAllAnnouncements() async {
    final announcementResponse =
        await _supabaseAnnouncementApi.fetchAnnouncements();
    return announcementResponse
        .map((announcement) => Announcement.fromJson(announcement))
        .toList();
  }

  Future<void> postAnnouncement(String title, String description) async {
    await _supabaseAnnouncementApi.postAnnouncement(title, description);
  }

  Future<void> deleteAnnouncement(String announcementId) {
    return _supabaseAnnouncementApi.deleteAnnouncement(announcementId);
  }

  Future<void> updateAnnouncement(Announcement announcement) {
    return _supabaseAnnouncementApi.updateAnnouncement(announcement.toJson());
  }
}
