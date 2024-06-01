import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/create_event_bloc.dart';

class CreateEventDescriptionScreen extends StatelessWidget {
  const CreateEventDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController controller = QuillController(
        selection: const TextSelection.collapsed(offset: 0),
        document: Document()..insert(0, 'Event description'));

    return BlocProvider(
      create: (context) => getIt<CreateEventBloc>(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // TODO: Scroll to top
          },
          backgroundColor: AppColors.primary,
          elevation: 0,
          child: const Icon(
            Icons.arrow_upward_rounded,
            color: AppColors.white,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Event description', style: AppTextStyle.titleSmall),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () => context.go(
                        '/admin_events_managment/event_name/event_description/event_date'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary),
                    child: Text('Next', style: AppTextStyle.button),
                  ),
                ),
              ],
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _ToolbarHeaderDelegate(
                child: Container(
                  color: AppColors.background,
                  child: QuillToolbar.simple(
                    configurations: QuillSimpleToolbarConfigurations(
                      controller: controller,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        border: Border.all(color: AppColors.grayText),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      toolbarIconAlignment: WrapAlignment.start,
                      toolbarSize: 0,
                      sectionDividerSpace: 1,
                      // TODO: bruh this package.....
                      toolbarSectionSpacing: -5,
                      headerStyleType: HeaderStyleType.original,
                      showBackgroundColorButton: false,
                      showFontFamily: false,
                      showSearchButton: false,
                      showClipboardCopy: false,
                      showClipboardPaste: false,
                      showClipboardCut: false,
                      showHeaderStyle: false,
                      showInlineCode: false,
                      showColorButton: false,
                      showListCheck: false,
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    FormField(
                      builder: (FormFieldState state) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: BlocBuilder<CreateEventBloc,
                                    CreateEventState>(
                                  builder: (context, state) {
                                    return Text(
                                      state.eventName,
                                      style: AppTextStyle.titleLarge,
                                    );
                                  },
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
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Make this a common delegate?
class _ToolbarHeaderDelegate extends SliverPersistentHeaderDelegate {
  _ToolbarHeaderDelegate({required this.child});

  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 80.0;

  @override
  double get minExtent => 80.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
