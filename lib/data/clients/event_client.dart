import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class EventClient {
  final SupabaseClient _supabaseClient;

  EventClient(this._supabaseClient);

  Future<void> addEvent(
    String name,
    String description,
    DateTime startTime,
    DateTime endTime,
    DateTime date,
    String location,
    String speaker,
    String info,
  ) async =>
      await _supabaseClient.from('events').insert({
        'name': name,
        'description': description,
        'startTime': startTime.toIso8601String(),
        'endTime': endTime.toIso8601String(),
        'date': date.toIso8601String(),
        'location': location,
        'speaker': speaker,
        'info': info,
      });

  Future<List<Map<String, dynamic>>> fetchEvents() async =>
      Supabase.instance.client.from('events').select();

  Future<List<Map<String, dynamic>>> fetchEventAttendees() async {
    return Supabase.instance.client.from('event_attendees').select();
  }

  Future<void> deleteEvent(String eventId) async =>
      await _supabaseClient.from('events').delete().eq('id', eventId);

  Future<void> updateEvent(Map<String, dynamic> event) async =>
      await _supabaseClient.from('events').upsert(event);

  Future<void> markGoing(String eventId) async =>
      await _supabaseClient.from('event_attendees').insert(
        {
          'event_id': eventId,
          'user_id': _supabaseClient.auth.currentUser!.id,
        },
      );

  Future<void> markNotGoing(String eventId) async => await _supabaseClient
      .from('event_attendees')
      .delete()
      .eq('event_id', eventId)
      .eq('user_id', _supabaseClient.auth.currentUser!.id);
}
