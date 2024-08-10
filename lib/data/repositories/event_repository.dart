import 'package:ieee_sst/data/clients/event_client.dart';
import 'package:ieee_sst/data/models/event_attendee_model/event_attendee.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

@LazySingleton()
class EventRepository {
  final EventClient _eventClient;
  final SupabaseClient _supabaseClient;

  EventRepository(this._eventClient, this._supabaseClient);

  Future<List<Event>> getAllEvents() async {
    final eventsResponse = await _eventClient.fetchEvents();
    final eventAttendResponse = await getAllEventAttendees();
    return eventsResponse
        .map((event) => Event.fromJson(event).copyWith(
            isGoing: eventAttendResponse.any((eventAttendee) =>
                eventAttendee.event_id == event['id'] &&
                eventAttendee.user_id == _supabaseClient.auth.currentUser!.id),
            attendeeCount: eventAttendResponse
                .where((eventAttendee) => eventAttendee.event_id == event['id'])
                .length))
        .toList();
  }

  /// For now it doesn't user toJson because it converts id to a null which
  /// supabase doesn't accept so it's better to send the map directly
  Future<void> addEvent(
    String name,
    String description,
    DateTime startTime,
    DateTime endTime,
    String location,
    String speaker,
    String info,
    DateTime date,
  ) async {
    await _eventClient.addEvent(
        name, description, startTime, endTime, date, location, speaker, info);
  }

  Future<void> deleteEvent(String eventId) async =>
      await _eventClient.deleteEvent(eventId);

  Future<void> updateEvent(Event event) async =>
      await _eventClient.updateEvent(event.toJson());

  Future<void> markGoing(String eventId) async =>
      await _eventClient.markGoing(eventId);

  Future<void> markNotGoing(String eventId) async =>
      await _eventClient.markNotGoing(eventId);

  Future<List<EventAttendee>> getAllEventAttendees() async {
    final eventAttendeesResponse = await _eventClient.fetchEventAttendees();
    return eventAttendeesResponse
        .map((eventAttendee) => EventAttendee.fromJson(eventAttendee))
        .toList();
  }
}
