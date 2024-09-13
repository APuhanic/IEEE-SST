import 'package:ieee_sst/data/clients/event_client.dart';
import 'package:ieee_sst/data/local_storage/event_local_storage.dart';
import 'package:ieee_sst/data/models/event_attendee_model/event_attendee.dart';
import 'package:ieee_sst/data/models/input_models/filter_chip_types.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:ieee_sst/util/connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

@LazySingleton()
class EventRepository {
  final EventClient _eventClient;
  final SupabaseClient _supabaseClient;
  final EventLocalStorage _eventLocalStorage;
  final ConnectionChecker _connectionChecker;

  EventRepository(
    this._eventClient,
    this._supabaseClient,
    this._eventLocalStorage,
    this._connectionChecker,
  );

  Future<List<Event>> getAllEvents() async {
    if (await _connectionChecker.hasConnection) {
      return await _getAllEventsFromClient();
    } else {
      return await _getAllEventsFromCache();
    }
  }

  Future<List<Event>> getEventsByDateFromCache(DateTime? date) async {
    if (date == null) return await _getAllEventsFromCache();
    final events = await _getAllEventsFromCache();
    return events.where((event) => event.date == date).toList();
  }

  Future<List<Event>> getEventsByFilterFromCache(
      FilterType? filter, List<Event> events) async {
    if (filter == null) return events;
    return switch (filter) {
      FilterType.going => events.where((element) => element.isGoing).toList(),
      FilterType.past => events.where(hasEventPassed).toList(),
      FilterType.upcoming => events.where(isEventUpcoming).toList(),
    };
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

  Future<void> updateEvent(Event event) async {
    //TODO Implement upload event model
    final eventData = {
      'id': event.id,
      'name': event.name,
      'description': event.description,
      'location': event.location,
      'speaker': event.speaker,
      'startTime': event.startTime!.toIso8601String(),
      'endTime': event.endTime!.toIso8601String(),
      'date': event.date!.toIso8601String(),
      'info': event.info,
      // Exclude 'isGoing' and 'attendeeCount'
    };
    await _eventClient.updateEvent(eventData);
  }

  Future<void> markGoing(Event event) async {
    _eventLocalStorage.saveIsGoing(event);
    await _eventClient.markGoing(event.id!);
  }

  Future<void> markNotGoing(Event event) async {
    _eventLocalStorage.saveIsGoing(event);
    await _eventClient.markNotGoing(event.id!);
  }

  Future<List<EventAttendee>> getAllEventAttendees() async {
    final eventAttendeesResponse = await _eventClient.fetchEventAttendees();
    return eventAttendeesResponse
        .map((eventAttendee) => EventAttendee.fromJson(eventAttendee))
        .toList();
  }

  _getAllEventsFromClient() async {
    final eventsResponse = await _eventClient.fetchEvents();
    final eventAttendResponse = await getAllEventAttendees();
    final eventList = eventsResponse
        .map((event) => Event.fromJson(event).copyWith(
            isGoing: eventAttendResponse.any((eventAttendee) =>
                eventAttendee.event_id == event['id'] &&
                eventAttendee.user_id == _supabaseClient.auth.currentUser!.id),
            attendeeCount: eventAttendResponse
                .where((eventAttendee) => eventAttendee.event_id == event['id'])
                .length))
        .toList();
    await _eventLocalStorage.saveEvents(eventList);
    return eventList;
  }

  Future<List<Event>> _getAllEventsFromCache() async {
    return await _eventLocalStorage.getEvents();
  }

  //TODO: Extrat to another class?
  bool isEventUpcoming(event) => event.date!.isAfter(DateTime.now());

  bool hasEventPassed(event) => event.date!.isBefore(DateTime.now());
}
