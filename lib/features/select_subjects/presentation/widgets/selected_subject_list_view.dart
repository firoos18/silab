import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim_bloc.dart';
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
          final List<SubjectEntity> subjects =
              state.selectedSubjectEntity!.subjects!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selected Subjects',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return SubjectContainer(
                    subjectTitle: subjects[index].name!,
                    subjectLecturer: subjects[index].lecturer!,
                  );
                },
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
