import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';
import 'package:silab/features/select_subjects/presentation/widgets/class_option_list.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PilihKelasPageExtra {
  final List<SubjectEntity>? selectedSubjects;
  final String? userId;

  const PilihKelasPageExtra({
    required this.selectedSubjects,
    required this.userId,
  });
}

class PilihKelasPage extends StatefulWidget {
  const PilihKelasPage({
    super.key,
  });

  @override
  State<PilihKelasPage> createState() => _PilihKelasPageState();
}

class _PilihKelasPageState extends State<PilihKelasPage> {
  final Map<String, String> selectedClasses = {};

  void onSelectedClassChanged({String? subjectName, String? selectedClass}) {
    setState(() {
      selectedClasses[subjectName!] = selectedClass!;
    });
  }

  @override
  void initState() {
    context
        .read<UserClassOptionByPaidSubjectBloc>()
        .add(GetUserClassOptionByPaidSubject());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 24),
        child: Material(
          color: Colors.white,
          child: Column(
            children: [
              const Text(
                'Pilih kelas yang anda inginkan. Sesuaikan dengan jadwal anda!',
              ),
              const SizedBox(height: 20),
              BlocBuilder<UserClassOptionByPaidSubjectBloc,
                  UserClassOptionByPaidSubjectState>(
                builder: (context, state) {
                  if (state is UserClassOptionByPaidSubjectLoaded) {
                    final groupedClasses = groupBy(
                        state.userClassOptionByPaidSubjectEntity!,
                        ((classes) => classes.subject_name));

                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount: groupedClasses.length,
                      separatorBuilder: (context, index) => Divider(
                        color: const Color(0xff1d1d1d).withValues(alpha: 0.5),
                        thickness: 0.5,
                      ),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(
                            top: index == 0 ? 0 : 32, bottom: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              groupedClasses.keys.toList()[index]!,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            ClassOptionList(
                              classes: groupedClasses[
                                  groupedClasses.keys.toList()[index]]!,
                              onClassChanged: (value) => onSelectedClassChanged(
                                subjectName:
                                    groupedClasses.keys.toList()[index]!,
                                selectedClass: value,
                              ),
                              selectedClass: selectedClasses[
                                  groupedClasses.keys.toList()[index]],
                            )
                          ],
                        ),
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
                    label: BlocBuilder<AddSelectedClassBloc,
                        AddSelectedClassState>(
                      builder: (context, state) {
                        return Skeletonizer(
                          enabled:
                              state is AddSelectedClassLoading ? true : false,
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
                              builder: (context) => AlertDialog(
                                title: const Text('Simpan Pilihan Kelas'),
                                content: const Text(
                                  'Apakah anda yakin untuk menyimpan kelas yang anda pilih?',
                                ),
                                actions: [
                                  InkWell(
                                    onTap: () => Navigator.of(context,
                                            rootNavigator: true)
                                        .pop(),
                                    child: const Text(
                                      'Kembali',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFF0000),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.read<AddSelectedClassBloc>().add(
                                            AddSelectedClass(
                                              selectedClass: selectedClasses
                                                  .values
                                                  .toList(),
                                            ),
                                          );
                                    },
                                    child: BlocConsumer<AddSelectedClassBloc,
                                        AddSelectedClassState>(
                                      listener: (context, state) {
                                        if (state is AddSelectedClassSuccess) {
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop();
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            snackBar(
                                              message: state.message,
                                              type: AlertType.error,
                                            ),
                                          );
                                        }
                                      },
                                      builder: (context, state) {
                                        return Skeletonizer(
                                          enabled:
                                              state is AddSelectedClassLoading
                                                  ? true
                                                  : false,
                                          enableSwitchAnimation: true,
                                          child: const Text(
                                            'Simpan',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                                alignment: Alignment.center,
                                icon: const Icon(Boxicons.bx_info_circle),
                                actionsAlignment: MainAxisAlignment.spaceEvenly,
                              ),
                            )
                        : null,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
