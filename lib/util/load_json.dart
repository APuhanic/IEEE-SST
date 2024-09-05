import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';
import 'package:ieee_sst/data/models/keynote_speaker_model/keynote_speaker_model.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';

//TODO: Refactor this function to use generics?
Future<List<ConferenceChair>> loadConferenceChairs() async {
  try {
    final jsonString =
        await rootBundle.loadString('assets/json/conference_chairs.json');
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    final List<dynamic> jsonList =
        jsonMap['conference_chairs'] as List<dynamic>;
    return jsonList.map((e) {
      return ConferenceChair.fromJson(e as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    debugPrint('Error loading conference chairs: $e');
    return [];
  }
}

Future<List<SteeringCommittee>> loadSteeringCommittee() async {
  try {
    // Load the JSON string from the assets
    final jsonString =
        await rootBundle.loadString('assets/json/steering_committee.json');

    // Decode the JSON string into a Map
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Access the list of steering committee members from the Map
    final List<dynamic> jsonList =
        jsonMap['steering_committee'] as List<dynamic>;

    debugPrint('Steering Committee: $jsonList');
    // Convert the list of maps into a list of SteeringCommittee objects
    return jsonList.map((e) {
      return SteeringCommittee.fromJson(e as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    debugPrint(
        'Error loading steering committee members: $e'); // Changed debugPrint to print
    return [];
  }
}

Future<List<SteeringCommittee>> loadProgramCommittee() async {
  try {
    // Load the JSON string from the assets
    final jsonString =
        await rootBundle.loadString('assets/json/program_committee.json');

    // Decode the JSON string into a Map
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Access the list of steering committee members from the Map
    final List<dynamic> jsonList =
        jsonMap['program_committee'] as List<dynamic>;

    debugPrint('Steering Committee: $jsonList');
    // Convert the list of maps into a list of SteeringCommittee objects
    return jsonList.map((e) {
      return SteeringCommittee.fromJson(e as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    debugPrint(
        'Error loading steering committee members: $e'); // Changed debugPrint to print
    return [];
  }
}

Future<List<KeynoteSpeaker>> loadKeyNoteSpeakers() async {
  try {
    // Load the JSON string from the assets
    final jsonString =
        await rootBundle.loadString('assets/json/keynote_speakers.json');

    // Decode the JSON string into a Map
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Access the list of steering committee members from the Map
    final List<dynamic> jsonList = jsonMap['keynote_speakers'] as List<dynamic>;

    debugPrint('Steering Committee: $jsonList');
    // Convert the list of maps into a list of SteeringCommittee objects
    return jsonList.map((e) {
      return KeynoteSpeaker.fromJson(e as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    debugPrint(
        'Error loading steering committee members: $e'); // Changed debugPrint to print
    return [];
  }
}
