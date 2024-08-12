import 'package:hive/hive.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class KeyValueStorage {
  static const _eventsBoxKey = 'events';

  KeyValueStorage(this._hive) {
    try {
      _hive.registerAdapter(EventAdapter());
    } catch (e) {
      throw Exception(
          'You shouldn\'t have more than one [KeyValueStorage] instance in your '
          'project');
    }
  }

  final HiveInterface _hive;

  Future<Box<Event>> get eventsBox async {
    return _hive.openBox<Event>(_eventsBoxKey);
  }

  /*Future<Box<T>> openBox<T>(String boxKey) async {
    return Hive.openBox(boxKey);
  }*/
}
