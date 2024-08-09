import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
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
  ) async {
    try {
      Logger().i(date.toIso8601String());
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
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> fetchEvents() async {
    return Supabase.instance.client.from('events').select();
  }

  Future<List<Map<String, dynamic>>> fetchEventAttendees() async {
    return Supabase.instance.client.from('event_attendees').select();
  }

  Future<void> deleteEvent(String eventId) async {
    try {
      await _supabaseClient.from('events').delete().eq('id', eventId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateEvent(Map<String, dynamic> event) async {
    try {
      await _supabaseClient.from('events').upsert(event);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> markGoing(String eventId) async {
    try {
      await _supabaseClient.from('event_attendees').insert({
        'event_id': eventId,
        'user_id': _supabaseClient.auth.currentUser!.id,
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> markNotGoing(String eventId) async {
    try {
      await _supabaseClient
          .from('event_attendees')
          .delete()
          .eq('event_id', eventId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
