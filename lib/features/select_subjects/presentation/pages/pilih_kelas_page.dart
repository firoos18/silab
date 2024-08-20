import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/widgets/class_listview.dart';
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

  void onSelectedClassChanged({String? subjectId, String? selectedClass}) {
    setState(() {
      selectedClasses[subjectId!] = selectedClass!;
    });
  }

  @override
  void initState() {
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AddSelectedClassBloc, AddSelectedClassState>(
        listener: (context, state) {
          if (state is AddSelectedClassSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
                snackBar(message: 'Kelas Terdaftar', type: AlertType.success));

            context
                .read<UserRegisteredClassBloc>()
                .add(GetUserRegisteredClass());
            context.goNamed('home');
          } else if (state is AddSelectedClassFailed) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(snackBar(
              message: state.message,
              type: AlertType.error,
              action: () => context
                  .read<AddSelectedClassBloc>()
                  .add(AddSelectedClass(selectedClass: selectedClasses)),
              actionLabel: 'Ulangi',
            ));
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Pilih kelas yang anda inginkan. Sesuaikan kelas dengan jadwal anda.',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 48),
                BlocBuilder<SelectedSubjectByNimBloc,
                    SelectedSubjectByNimState>(
                  builder: (context, state) {
                    return Flexible(
                      fit: FlexFit.loose,
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.selectedSubjectEntity != null
                            ? state.selectedSubjectEntity!.subjects!.length
                            : 1,
                        itemBuilder: (context, index) {
                          return Skeletonizer(
                            enabled: state is SelectedSubjectByNimLoading
                                ? true
                                : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  state.selectedSubjectEntity != null
                                      ? state.selectedSubjectEntity!
                                          .subjects![index].name!
                                      : 'Subject Name',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  state.selectedSubjectEntity != null
                                      ? state.selectedSubjectEntity!
                                          .subjects![index].lecturer!
                                      : 'Lecturer Name',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                if (state is SelectedSubjectByNimLoaded)
                                  ClassListView(
                                    state: state,
                                    classes: state.selectedSubjectEntity != null
                                        ? state.selectedSubjectEntity!
                                            .subjects![index].classes
                                        : [],
                                    isRegistered: state
                                                .selectedSubjectEntity!
                                                .subjects![index]
                                                .registeredClass !=
                                            null
                                        ? true
                                        : false,
                                    selectedClass:
                                        state.selectedSubjectEntity != null
                                            ? selectedClasses[state
                                                .selectedSubjectEntity!
                                                .subjects![index]
                                                .id]
                                            : state
                                                .selectedSubjectEntity!
                                                .subjects![index]
                                                .registeredClass!
                                                .id,
                                    onClassChanged: (value) {
                                      onSelectedClassChanged(
                                        subjectId: state.selectedSubjectEntity!
                                            .subjects![index].id,
                                        selectedClass: value,
                                      );
                                    },
                                  )
                                else
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: ListView.builder(
                                      itemCount: 3,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          Container(
                                        width: double.infinity,
                                        height: 50,
                                        padding: const EdgeInsets.all(12),
                                        margin: EdgeInsets.only(
                                          bottom: index != 3 ? 16 : 0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xfff4f4f9),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(
                          color: Color(0xff1d1d1d),
                          thickness: 0.1,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                CustomSmallButton(
                  label:
                      BlocBuilder<AddSelectedClassBloc, AddSelectedClassState>(
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
                      ? () => context
                          .read<AddSelectedClassBloc>()
                          .add(AddSelectedClass(selectedClass: selectedClasses))
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
