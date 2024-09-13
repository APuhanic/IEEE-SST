import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/document_model/document_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentCard extends StatelessWidget {
  const DocumentCard({
    super.key,
    required this.document,
  });

  final Document document;

  Future<void> _launchURL(BuildContext context) async {
    final Uri url = Uri.parse(document.url);
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          document.name,
          style: AppTextStyle.nameText,
          textAlign: TextAlign.center,
          maxLines: null,
          overflow: TextOverflow.visible,
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton(
            onPressed: () => _launchURL(context),
            icon: const Icon(Icons.download),
          ),
        ),
      ],
    );
  }
}
