import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AnnouncementLocalStorage {
  final KeyValueStorage _keyValueStorage;

  AnnouncementLocalStorage(this._keyValueStorage);

  Future<void> saveAnnouncements(List<Announcement> announcements) async {
    final box = await _keyValueStorage.announcementsBox;
    await box.clear();
    await box.addAll(announcements);
  }

  Future<List<Announcement>> getAnnouncements() async {
    final box = await _keyValueStorage.announcementsBox;
    return box.values.toList();
  }

  Future<void> deleteAnnouncement(Announcement announcement) async {
    final box = await _keyValueStorage.announcementsBox;
    await box.delete(announcement.id);
  }

  Future<void> updateAnnouncement(Announcement announcement) async {
    final box = await _keyValueStorage.announcementsBox;
    await box.put(announcement.id, announcement);
  }

  Future<void> clearAnnouncements() async {
    final box = await _keyValueStorage.announcementsBox;
    await box.clear();
  }
}
