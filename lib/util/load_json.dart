import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ieee_sst/data/models/conference_chair_model/conference_chair_model.dart';
import 'package:ieee_sst/data/models/keynote_speaker_model/keynote_speaker_model.dart';
import 'package:ieee_sst/data/models/special_session_model/special_session_model.dart';
import 'package:ieee_sst/data/models/steering_committee_model/steering_committee_model.dart';

Future<List<ConferenceChair>> loadConferenceChairs() async {
  final jsonList =
      await loadJson('assets/json/conference_chairs.json', 'conference_chairs');
  return jsonList
      .map((e) => ConferenceChair.fromJson(e as Map<String, dynamic>))
      .toList();
}

Future<List<CommitteeMember>> loadSteeringCommittee() async {
  final jsonList = await loadJson(
      'assets/json/steering_committee.json', 'steering_committee');
  return jsonList
      .map((e) => CommitteeMember.fromJson(e as Map<String, dynamic>))
      .toList();
}

Future<List<CommitteeMember>> loadProgramCommittee() async {
  final jsonList =
      await loadJson('assets/json/program_committee.json', 'program_committee');
  return jsonList
      .map((e) => CommitteeMember.fromJson(e as Map<String, dynamic>))
      .toList();
}

Future<List<KeynoteSpeaker>> loadKeyNoteSpeakers() async {
  final jsonList =
      await loadJson('assets/json/keynote_speakers.json', 'keynote_speakers');
  return jsonList
      .map((e) => KeynoteSpeaker.fromJson(e as Map<String, dynamic>))
      .toList();
}

Future<List<SpecialSession>> loadSpecialSessions() async {
  final jsonList =
      await loadJson('assets/json/special_sessions.json', 'specialSessions');
  return jsonList
      .map((e) => SpecialSession.fromJson(e as Map<String, dynamic>))
      .toList();
}

Future<List<dynamic>> loadJson(String path, String key) async {
  final jsonString = await rootBundle.loadString(path);
  final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  return jsonMap[key] as List<dynamic>;
}
