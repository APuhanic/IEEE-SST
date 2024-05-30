import 'package:ieee_sst/data/models/event_model.dart';
import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:injectable/injectable.dart';

/// Supabase Event Repository that handles getting event info
/// by calling the Supabase API or local storage depening on connection.
@LazySingleton()
class SupabaseEventRepository {
  final _supabaseApi = getIt<SupabaseApi>();

  Future<List<EventModel>> getAllEvents() async {
    final eventsResponse = await _supabaseApi.fetchEvents();
    return eventsResponse.map((event) => EventModel.fromMap(event)).toList();
  }

  Future<void> addEvent() async => await _supabaseApi.addEvent();
}
