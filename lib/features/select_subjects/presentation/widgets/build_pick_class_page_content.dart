import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_pick_class_page_confirmation_dialog.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_pick_class_page_subject_class_option.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildPickClassPageContent extends StatefulWidget {
  const BuildPickClassPageContent({super.key});

  @override
  State<BuildPickClassPageContent> createState() =>
      _BuildPickClassPageContentState();
}

class _BuildPickClassPageContentState extends State<BuildPickClassPageContent> {
  final Map<String, String> selectedClasses = {};

  void onSelectedClassChanged({String? subjectName, String? selectedClass}) {
    setState(() {
      selectedClasses[subjectName!] = selectedClass!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Text(
          'Pilih kelas yang anda inginkan. Sesuaikan dengan jadwal anda!',
        ),
        const SizedBox(height: 20),
        BlocConsumer<UserClassOptionByPaidSubjectBloc,
            UserClassOptionByPaidSubjectState>(
          listener: (context, state) {
            if (state is UserClassOptionByPaidSubjectFailed) {
              if (state.message == 'jwt expired') {
                context.goNamed('authentication');
              } else {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  snackBar(
                    message: state.message,
                    type: AlertType.error,
                  ),
                );
              }
            }
          },
          builder: (context, state) {
            if (state is UserClassOptionByPaidSubjectLoaded) {
              final Map<String?, List<UserClassOptionByPaidSubjectEntity>>
                  groupedClasses = groupBy(
                      state.userClassOptionByPaidSubjectEntity!,
                      ((classes) => classes.subject_name));

              return BuildPickClassPageSubjectClassOption(
                groupedClasses: groupedClasses,
                selectedClasses: selectedClasses,
                onClassChanged: ({selectedClass, subjectName}) =>
                    onSelectedClassChanged(
                  subjectName: subjectName,
                  selectedClass: selectedClass,
                ),
              );
            }

            return const SizedBox();
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomSmallButton(
              label: BlocBuilder<AddSelectedClassBloc, AddSelectedClassState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled: state is AddSelectedClassLoading ? true : false,
                    enableSwitchAnimation: true,
                    child: const Text(
                      'Simpan',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
              onPressed: selectedClasses.isNotEmpty
                  ? () => showAdaptiveDialog(
                        useRootNavigator: true,
                        context: context,
                        builder: (context) =>
                            BuildPickClassPageConfirmationDialog(
                          selectedClasses: selectedClasses.values.toList(),
                        ),
                      )
                  : null,
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
