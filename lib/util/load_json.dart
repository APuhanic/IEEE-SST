import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';
import 'package:ieee_sst/data/models/keynote_speaker_model/keynote_speaker_model.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';

Future<List<ConferenceChair>> loadConferenceChairs() async {
  try {
    final jsonList = await loadJson(
        'assets/json/conference_chairs.json', 'conference_chairs');
    return jsonList
        .map((e) => ConferenceChair.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    debugPrint('Error loading conference chairs: $e');
    return [];
  }
}

Future<List<SteeringCommittee>> loadSteeringCommittee() async {
  try {
    final jsonList = await loadJson(
        'assets/json/steering_committee.json', 'steering_committee');
    return jsonList
        .map((e) => SteeringCommittee.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    debugPrint('Error loading steering committee members: $e');
    return [];
  }
}

Future<List<SteeringCommittee>> loadProgramCommittee() async {
  try {
    final jsonList = await loadJson(
        'assets/json/program_committee.json', 'program_committee');
    return jsonList
        .map((e) => SteeringCommittee.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    debugPrint('Error loading steering committee members: $e');
    return [];
  }
}

Future<List<KeynoteSpeaker>> loadKeyNoteSpeakers() async {
  try {
    final jsonList =
        await loadJson('assets/json/keynote_speakers.json', 'keynote_speakers');
    return jsonList
        .map((e) => KeynoteSpeaker.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    debugPrint('Error loading steering committee members: $e');
    return [];
  }
}

Future<List<dynamic>> loadJson(String path, String key) async {
  try {
    final jsonString = await rootBundle.loadString(path);
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap[key] as List<dynamic>;
  } catch (e) {
    debugPrint('Error loading json: $e');
    return [];
  }
}
