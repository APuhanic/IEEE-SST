import 'package:ieee_sst/data/supabase/supabase_event_api.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseEventRepository {
  final SupabaseEventApi _supabaseApi;

  SupabaseEventRepository(this._supabaseApi);

  Future<List<Event>> getAllEvents() async {
    final eventsResponse = await _supabaseApi.fetchEvents();
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
    await _supabaseApi.addEvent(
      name,
      description,
      time,
      location,
      speaker,
    );
  }

  Future<void> deleteEvent(String eventId) async =>
      await _supabaseApi.deleteEvent(eventId);

  Future<void> updateEvent(Event event) async =>
      await _supabaseApi.updateEvent(event.toJson());

  Future<void> markGoing(String eventId) async =>
      await _supabaseApi.markGoing(eventId);
}
