import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/supabase/supabase_announcement_api.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseAnnouncementRepository {
  final SupabaseAnnouncementApi _supabaseApi;

  SupabaseAnnouncementRepository(this._supabaseApi);

  Future<List<Announcement>> getAllAnnouncements() async {
    final announcementResponse = await _supabaseApi.fetchAnnouncements();
    return announcementResponse
        .map((announcement) => Announcement.fromJson(announcement))
        .toList();
  }

  // TODO: Add event model, and toJson?
  /// For now it doesn't user toJson because it converts id to a null which
  /// supabase doesn't accept so it's better to send the map directly
  // TODO: Might add separate model for supabase events?
  Future<void> postAnnouncement(
    String title,
    String description,
  ) async {
    await _supabaseApi.postAnnouncement(title, description);
  }
}
