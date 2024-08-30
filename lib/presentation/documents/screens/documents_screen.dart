import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/documents/bloc/document_managment_bloc/document_managment_bloc.dart';
import 'package:ieee_sst/presentation/documents/widgets/document_list.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<DocumentManagmentBloc>()
        .add(const DocumentManagmentEvent.loadDocuments());
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 56.0),
        child: FloatingActionButton(
          onPressed: () => context.go('/documents/upload_document'),
          backgroundColor: AppColors.primary,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: AppColors.white,
          ),
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: AppColors.white,
        color: AppColors.primary,
        onRefresh: () async {
          context
              .read<DocumentManagmentBloc>()
              .add(const DocumentManagmentEvent.loadDocuments());
        },
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Documents'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: BlocBuilder<DocumentManagmentBloc,
                        DocumentManagmentState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loading: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (state) =>
                              DocumentList(documents: state.documents),
                          error: (state) => Center(
                            child: Text(state.message),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}
