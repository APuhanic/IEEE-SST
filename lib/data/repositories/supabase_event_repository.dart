import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseEventRepository {
  final SupabaseApi _supabaseApi;

  SupabaseEventRepository(this._supabaseApi);

  Future<List<Event>> getAllEvents() async {
    final eventsResponse = await _supabaseApi.fetchEvents();
    return eventsResponse.map((event) => Event.fromJson(event)).toList();
  }

  // TODO: Add event model, and toJson?
  Future<void> addEvent(String name, String description, String location,
      String speaker, DateTime date, String time) async {
    await _supabaseApi.addEvent(
        name, description, location, speaker, date, time);
  }

  Future<void> deleteEvent(String eventId) async {
    await _supabaseApi.deleteEvent(eventId);
  }
}
