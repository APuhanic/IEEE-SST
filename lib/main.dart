import 'package:flutter/material.dart';
import 'package:ieee_sst/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
  FlutterError.onError = (FlutterErrorDetails details) {
    debugPrint('Unhandled Flutter error: ${details.exception}');
  }; //Remove this line
}
