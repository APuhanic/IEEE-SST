import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';

class CreateEventDescriptionScreen extends StatelessWidget {
  const CreateEventDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController controller = QuillController(
        selection: const TextSelection.collapsed(offset: 0),
        document: Document()..insert(0, 'Event description'));

    return Scaffold(
        body: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  const _CreateEventHeader(),
                  FormField(
                    builder: (FormFieldState state) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            QuillToolbar.simple(
                              configurations: QuillSimpleToolbarConfigurations(
                                controller: controller,
                                showFontFamily: false,
                                toolbarIconAlignment: WrapAlignment.start,
                                toolbarSize: 15,
                                showBackgroundColorButton: false,
                                showSearchButton: false,
                                showClipboardCopy: false,
                                showClipboardPaste: false,
                                showClipboardCut: false,
                                showHeaderStyle: false,
                                showInlineCode: false,
                              ),
                            ),
                            const Divider(),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Event description',
                                style: AppTextStyle.titleLarge,
                              ),
                            ),
                            Container(
                              color: AppColors.background,
                              child: QuillEditor(
                                configurations: QuillEditorConfigurations(
                                  controller: controller,
                                  autoFocus: true,
                                  scrollBottomInset: 10,
                                ),
                                focusNode: FocusNode(
                                  canRequestFocus: true,
                                ),
                                scrollController: ScrollController(
                                  keepScrollOffset: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: const HomeScreenDrawer());
  }
}

class _CreateEventHeader extends StatelessWidget {
  const _CreateEventHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        Text('Event Description', style: AppTextStyle.titleSmall),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
          child: Text('Next', style: AppTextStyle.button),
        ),
      ],
    );
  }
}
