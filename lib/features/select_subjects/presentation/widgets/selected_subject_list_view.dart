import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/domain/entities/subject/selected_subject_subjects.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/subjects/presentation/widgets/add_subject_bottom_sheet.dart';
import 'package:silab/features/select_subjects/presentation/widgets/subject_container.dart';

class SelectedSubjectListView extends StatefulWidget {
  const SelectedSubjectListView({super.key});

  @override
  State<SelectedSubjectListView> createState() =>
      _SelectedSubjectListViewState();
}

class _SelectedSubjectListViewState extends State<SelectedSubjectListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedSubjectByNimBloc, SelectedSubjectByNimState>(
      builder: (context, state) {
        if (state is SelectedSubjectByNimLoaded) {
          final List<SelectedSubjectSubjectsEntity> subjects =
              state.selectedSubjectEntity!.subjects!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Registered Subjects',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        useRootNavigator: true,
                        context: context,
                        showDragHandle: true,
                        isScrollControlled: true,
                        clipBehavior: Clip.antiAlias,
                        builder: (context) => AddSubjectBottomSheet(
                          userId: state.selectedSubjectEntity!.userId,
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              if (subjects.isNotEmpty)
                ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: subjects.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SubjectContainer(
                        subjectTitle: subjects[index].name!,
                        subjectLecturer: subjects[index].lecturer!,
                        classes: subjects[index].classes!.length.toString(),
                        id: subjects[index].id!,
                      ),
                    );
                  },
                )
              else
                const Center(
                  child: Text('No Subject Registered'),
                ),
            ],
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
