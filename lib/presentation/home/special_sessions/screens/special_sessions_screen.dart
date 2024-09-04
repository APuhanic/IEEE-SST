import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class SpecialSessionsScreen extends StatefulWidget {
  const SpecialSessionsScreen({super.key});

  @override
  _SpecialSessionsScreenState createState() => _SpecialSessionsScreenState();
}

class _SpecialSessionsScreenState extends State<SpecialSessionsScreen> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://sst-conference.org/index.php/special-sessions-2024/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Special sessions'),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
