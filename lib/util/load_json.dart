import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';

//TODO: Refactor this function to use generics?
Future<List<ConferenceChair>> loadConferenceChairs() async {
  try {
    // Load the JSON string from the assets
    final jsonString =
        await rootBundle.loadString('assets/json/conference_chairs.json');

    // Decode the JSON string into a Map
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    // Access the list of conference chairs from the Map
    final List<dynamic> jsonList =
        jsonMap['conference_chairs'] as List<dynamic>;

    // Convert the list of maps into a list of ConferenceChair objects
    return jsonList.map((e) {
      return ConferenceChair.fromJson(e as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    debugPrint(
        'Error loading conference chairs: $e'); // Changed debugPrint to print
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
