import 'package:ieee_sst/data/clients/event_client.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class EventRepository {
  final EventClient _eventClient;

  EventRepository(this._eventClient);

  Future<List<Event>> getAllEvents() async {
    final eventsResponse = await _eventClient.fetchEvents();
    return eventsResponse.map((event) => Event.fromJson(event)).toList();
  }

  // TODO: Add event model, and toJson?
  /// For now it doesn't user toJson because it converts id to a null which
  /// supabase doesn't accept so it's better to send the map directly
  // TODO: Might add separate model for supabase events?
  Future<void> addEvent(
    String name,
    String description,
    DateTime time,
    String location,
    String speaker,
  ) async {
    await _eventClient.addEvent(
      name,
      description,
      time,
      location,
      speaker,
    );
  }

  Future<void> deleteEvent(String eventId) async =>
      await _eventClient.deleteEvent(eventId);

  Future<void> updateEvent(Event event) async =>
      await _eventClient.updateEvent(event.toJson());

  Future<void> markGoing(String eventId) async =>
      await _eventClient.markGoing(eventId);
}
