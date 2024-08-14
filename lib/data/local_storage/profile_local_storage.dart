import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProfileLocalStorage {
  final KeyValueStorage _keyValueStorage;

  ProfileLocalStorage(this._keyValueStorage);

  Future<void> saveProfile(Profile profile) async {
    final box = await _keyValueStorage.profileBox;
    await box.put(profile.id, profile);
  }

  Future<Profile?> getProfile(String profileId) async {
    final box = await _keyValueStorage.profileBox;
    return box.get(profileId);
  }

  Future<void> updateProfile(Profile profile) async {
    final box = await _keyValueStorage.profileBox;
    await box.put(profile.id, profile);
  }

  Future<void> deleteProfile(Profile profile) async {
    final box = await _keyValueStorage.profileBox;
    await box.delete(profile.id);
  }
}
