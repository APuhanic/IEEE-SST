import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/document_model/document_model.dart';
import 'package:ieee_sst/presentation/documents/widgets/document_card.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({
    super.key,
    required this.documents,
  });

  final List<Document> documents;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: documents.isEmpty
          ? const Center(child: Text('No documents found'))
          : ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: documents.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) =>
                  DocumentCard(document: documents[index]),
            ),
    );
  }
}
