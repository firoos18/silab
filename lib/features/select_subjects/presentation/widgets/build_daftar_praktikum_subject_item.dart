import 'package:flutter/material.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';

class BuildDaftarPraktikumSubjectItem extends StatelessWidget {
  final SubjectListState state;
  final int index;
  final List<SubjectEntity> userSelectedSubjectsId;
  final Function(bool?)? onChanged;

  const BuildDaftarPraktikumSubjectItem({
    super.key,
    required this.onChanged,
    required this.state,
    required this.index,
    required this.userSelectedSubjectsId,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile.adaptive(
      activeColor: const Color(0xff3272CA),
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: const BorderSide(
        color: Color(0xff1d1d1d),
        width: 1,
      ),
      value: userSelectedSubjectsId
          .contains(state.subjectList != null ? state.subjectList![index] : ''),
      onChanged: onChanged,
      dense: true,
      title: Text(
        state.subjectList != null
            ? state.subjectList![index].subject_name!
            : 'Subject Name',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
