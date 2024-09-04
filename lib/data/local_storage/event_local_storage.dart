import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class EventLocalStorage {
  final KeyValueStorage _keyValueStorage;

  EventLocalStorage(this._keyValueStorage);

  Future<void> saveEvents(List<Event> events) async {
    final box = await _keyValueStorage.eventsBox;
    await box.clear();
    await box.putAll(
      {for (var event in events) (event).id: event},
    );
  }

  Future<List<Event>> getEvents() async {
    final box = await _keyValueStorage.eventsBox;
    return box.values.toList();
  }

  Future<void> deleteEvent(Event event) async {
    final box = await _keyValueStorage.eventsBox;
    await box.delete(event.id);
  }

  Future<void> updateEvent(Event event) async {
    final box = await _keyValueStorage.eventsBox;
    await box.put(event.id, event);
  }

  Future<void> clearEvents() async {
    final box = await _keyValueStorage.eventsBox;
    await box.clear();
  }

  Future<void> saveEvent(Event event) async {
    final box = await _keyValueStorage.eventsBox;
    await box.put(event.id, event);
  }

  Future<Event?> getEvent(String eventId) async {
    final box = await _keyValueStorage.eventsBox;
    return box.get(eventId);
  }

  Future<void> saveIsGoing(Event event) async {
    final box = await _keyValueStorage.eventsBox;
    final updatedEvent = event.copyWith(isGoing: !event.isGoing);
    await box.put(event.id, updatedEvent);
  }

  Future<void> saveAttendeeCount(Event event, int attendeeCount) async {
    final box = await _keyValueStorage.eventsBox;
    final updatedEvent = event.copyWith(attendeeCount: attendeeCount);
    await box.put(event.id, updatedEvent);
  }
}
