import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/documents/bloc/document_form_bloc/document_form_bloc.dart';

class AddDocumentFileButton extends StatelessWidget {
  const AddDocumentFileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentFormBloc, DocumentFormState>(
      builder: (context, state) {
        return FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.primary,
          ),
          onPressed: () async {
            final file = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['pdf', 'doc', 'docx', 'ppt', 'pptx']);
            if (file == null) return;
            if (context.mounted) {
              context
                  .read<DocumentFormBloc>()
                  .add(DocumentFormEvent.fileChanged(file));
            }
          },
          child: const Icon(
            Icons.upload_file,
            color: AppColors.white,
          ),
        );
      },
    );
  }
}
