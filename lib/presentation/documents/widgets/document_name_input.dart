import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/documents/bloc/document_form_bloc/document_form_bloc.dart';

class DocumentNameInput extends StatelessWidget {
  const DocumentNameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentFormBloc, DocumentFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (fileName) => context
              .read<DocumentFormBloc>()
              .add(DocumentFormEvent.nameChanged(fileName)),
          initialValue: state.name,
          decoration: InputDecoration(
            label: Text('Document name', style: AppTextStyle.textForm),
            hintText: 'Document name',
            hintStyle: AppTextStyle.textForm,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.grayText,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primary, width: 2.0),
            ),
          ),
        );
      },
    );
  }
}
