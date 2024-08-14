import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';

class SponsorLocalStorage {
  final KeyValueStorage _keyValueStorage;

  SponsorLocalStorage(this._keyValueStorage);

  Future<void> saveSponsors(List<Sponsor> sponsors) async {
    final box = await _keyValueStorage.sponsorsBox;
    await box.clear();
    await box.addAll(sponsors);
  }

  Future<List<Sponsor>> getSponsors() async {
    final box = await _keyValueStorage.sponsorsBox;
    return box.values.toList();
  }

  Future<void> deleteSponsor(Sponsor sponsor) async {
    final box = await _keyValueStorage.sponsorsBox;
    await box.delete(sponsor.id);
  }
}
