import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:silab/features/subjects/presentation/widgets/add_subject_card.dart';

class AddSubjectBottomSheet extends StatefulWidget {
  const AddSubjectBottomSheet({super.key});

  @override
  State<AddSubjectBottomSheet> createState() => _AddSubjectBottomSheetState();
}

class _AddSubjectBottomSheetState extends State<AddSubjectBottomSheet> {
  List<String> subjectIdList = [];

  @override
  void initState() {
    context.read<SubjectListBloc>().add(GetSubjectList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubjectListBloc, SubjectListState>(
      builder: (context, state) {
        if (state is SubjectListLoading) {
          return Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: const Center(
              child: CupertinoActivityIndicator(),
            ),
          );
        } else if (state is SubjectListSuccess) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Add Subjects',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.subjectList!.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: AddSubjectCard(
                      onChecked: (subjectId) {
                        setState(() {
                          subjectIdList.add(subjectId);
                        });
                      },
                      subject: state.subjectList![index],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(subjectIdList);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Add Subjects'),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
