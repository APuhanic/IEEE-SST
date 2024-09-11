import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/documents/bloc/document_form_bloc/document_form_bloc.dart';
import 'package:ieee_sst/presentation/documents/widgets/add_document_file_button.dart';
import 'package:ieee_sst/presentation/documents/widgets/document_name_input.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<DocumentFormBloc, DocumentFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            debugPrint('Document uploaded successfully');
            Navigator.pop(context);
          }
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                expandedHeight: 40.0,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: Text('Upload Document'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.0),
                            child: DocumentNameInput(),
                          ),
                          // Add Document Button
                          const Padding(
                            padding: EdgeInsets.all(24.0),
                            child: AddDocumentFileButton(),
                          ),

                          BlocBuilder<DocumentFormBloc, DocumentFormState>(
                            builder: (context, state) {
                              if (state.file != null) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                          onTap: () {
                                            context
                                                .read<DocumentFormBloc>()
                                                .add(const DocumentFormEvent
                                                    .removeFile());
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                      // File Name Text
                                      Text(
                                        state.file!.files.single.name,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),

                          BlocBuilder<DocumentFormBloc, DocumentFormState>(
                            builder: (context, state) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 24.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    foregroundColor: AppColors.white,
                                    textStyle: AppTextStyle.button,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: state.status.isInProgress
                                      ? null
                                      : () {
                                          context.read<DocumentFormBloc>().add(
                                              const DocumentFormEvent
                                                  .uploadDocument());
                                        },
                                  child: state.status.isInProgress
                                      ? const CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.white),
                                        )
                                      : const Text('Upload'),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
