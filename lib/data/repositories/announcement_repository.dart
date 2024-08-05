import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/clients/announcement_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AnnouncementRepository {
  final AnnouncementClient _announcementClient;

  AnnouncementRepository(this._announcementClient);

  Future<List<Announcement>> getAllAnnouncements() async {
    final announcementResponse = await _announcementClient.fetchAnnouncements();
    return announcementResponse
        .map((announcement) => Announcement.fromJson(announcement))
        .toList();
  }

  Future<void> postAnnouncement(String title, String description) async {
    await _announcementClient.postAnnouncement(title, description);
  }

  Future<void> deleteAnnouncement(String announcementId) {
    return _announcementClient.deleteAnnouncement(announcementId);
  }

  Future<void> updateAnnouncement(Announcement announcement) {
    return _announcementClient.updateAnnouncement(announcement.toJson());
  }
}
