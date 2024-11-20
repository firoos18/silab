import 'package:flutter/material.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';

class BuildPaymentStatusPageSubjectItem extends StatelessWidget {
  final SelectedSubjectByNimState state;
  final int index;
  final int idx;

  const BuildPaymentStatusPageSubjectItem({
    super.key,
    required this.state,
    required this.index,
    required this.idx,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              state.selectedSubjectEntity![index].subjects![idx].subject_name!,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            'Semester ${state.selectedSubjectEntity![index].subjects![idx].semester!}',
          ),
        ],
      ),
    );
  }
}
