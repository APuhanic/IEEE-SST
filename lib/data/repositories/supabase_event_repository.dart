import 'package:flutter/material.dart';
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

  Future<void> deleteEvent(String eventId) async {
    await _supabaseApi.deleteEvent(eventId);
  }

  Future<void> updateEvent(Event event) async {
    debugPrint('Updating event: ${event.toJson()}');
    await _supabaseApi.updateEvent(event.toJson());
  }
}
