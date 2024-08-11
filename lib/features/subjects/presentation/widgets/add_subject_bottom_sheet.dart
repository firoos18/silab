import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_pop_up.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/data/models/add_selected_subject_model.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';

class AddSubjectBottomSheet extends StatefulWidget {
  final String? userId;

  const AddSubjectBottomSheet({super.key, required this.userId});

  @override
  State<AddSubjectBottomSheet> createState() => _AddSubjectBottomSheetState();
}

class _AddSubjectBottomSheetState extends State<AddSubjectBottomSheet> {
  final List<String> userSelectedSubjectsId = [];

  @override
  void initState() {
    context.read<SubjectListBloc>().add(const GetSubjectList());
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SelectedSubjectByNimBloc, SelectedSubjectByNimState>(
          listener: (context, state) {
            if (state is SelectedSubjectByNimLoaded) {
              for (var subject in state.selectedSubjectEntity!.subjects!) {
                userSelectedSubjectsId.add(subject.id!);
              }
            }
          },
        ),
        BlocListener<AddSelectedSubjectBloc, AddSelectedSubjectState>(
          listener: (context, state) {
            if (state is AddSelectedSubjectSuccess) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context)
                  .showSnackBar(snackBar('Subject Added', AlertType.success));

              context.pop();
            }
          },
        ),
      ],
      child: BlocBuilder<SubjectListBloc, SubjectListState>(
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
              margin: const EdgeInsets.only(bottom: 24),
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
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: state.subjectList!.length,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: CheckboxListTile(
                        value: userSelectedSubjectsId
                            .contains(state.subjectList![index].id),
                        onChanged: (value) {
                          setState(() {
                            if (value!) {
                              userSelectedSubjectsId
                                  .add(state.subjectList![index].id!);
                            } else {
                              userSelectedSubjectsId
                                  .remove(state.subjectList![index].id);
                            }
                          });
                        },
                        title: Text(state.subjectList![index].name!),
                        subtitle: Text(state.subjectList![index].lecturer!),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final state =
                          BlocProvider.of<AddSelectedSubjectBloc>(context)
                              .state;

                      if (state is AddSelectedSubjectLoading) {
                        showDialog(
                          context: context,
                          builder: (context) => const CustomLoadingIndicator(),
                        );
                      } else {
                        showDialog(
                          context: context,
                          useRootNavigator: false,
                          builder: (context) => CustomPopUp(
                            action: () {
                              final AddSelectedSubjectModel
                                  addSelectedSubjectData =
                                  AddSelectedSubjectModel(
                                subjects: userSelectedSubjectsId,
                                nim: widget.userId!,
                              );

                              context.read<AddSelectedSubjectBloc>().add(
                                    AddSelectedSubjectButtonTapped(
                                        subjects:
                                            addSelectedSubjectData.subjects),
                                  );
                            },
                            body:
                                'Please make sure the subject you pick match your KRS',
                            title: 'Confirm Subject Selection',
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
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
      ),
    );
  }
}
