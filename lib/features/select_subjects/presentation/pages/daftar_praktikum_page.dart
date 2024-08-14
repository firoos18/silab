import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/select_subjects/presentation/pages/ringkasan_daftar_page.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';

class DaftarPraktikumPage extends StatefulWidget {
  const DaftarPraktikumPage({super.key});

  @override
  State<DaftarPraktikumPage> createState() => _DaftarPraktikumPageState();
}

class _DaftarPraktikumPageState extends State<DaftarPraktikumPage> {
  final List<DropdownMenuItem> menuItems = [
    const DropdownMenuItem(
      value: 1,
      child: Text('Semester 1'),
    ),
    const DropdownMenuItem(
      value: 2,
      child: Text('Semester 2'),
    ),
    const DropdownMenuItem(
      value: 3,
      child: Text('Semester 3'),
    ),
    const DropdownMenuItem(
      value: 4,
      child: Text('Semester 4'),
    ),
    const DropdownMenuItem(
      value: 5,
      child: Text('Semester 5'),
    ),
    const DropdownMenuItem(
      value: 6,
      child: Text('Semester 6'),
    ),
    const DropdownMenuItem(
      value: 7,
      child: Text('Semester 7'),
    ),
    const DropdownMenuItem(
      value: 8,
      child: Text('Semester 8'),
    ),
  ];

  var currentValue = 1;

  List<String> userSelectedSubjectsId = [];

  @override
  void initState() {
    context.read<SubjectListBloc>().add(GetSubjectList(semester: currentValue));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Pilihlah praktikum sesuai dengan Mata Kuliah yang anda ambil di KRS.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: 360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Daftar Praktikum',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 35,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff1d1d1d),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: DropdownButton(
                          items: menuItems,
                          onChanged: (value) => setState(() {
                            currentValue = value;
                            context
                                .read<SubjectListBloc>()
                                .add(GetSubjectList(semester: value));
                          }),
                          value: currentValue,
                          underline: const SizedBox(),
                          elevation: 100,
                          icon: const Icon(Boxicons.bx_chevron_down),
                          enableFeedback: true,
                          alignment: Alignment.centerLeft,
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xfff4f4f9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: BlocBuilder<SubjectListBloc, SubjectListState>(
                        builder: (context, state) {
                          if (state is SubjectListLoading) {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          } else if (state is SubjectListSuccess) {
                            if (state.subjectList!.isNotEmpty) {
                              return ListView.builder(
                                itemCount: state.subjectList!.length,
                                itemExtent: 40,
                                itemBuilder: (context, index) =>
                                    CheckboxListTile.adaptive(
                                  activeColor: const Color(0xff3272CA),
                                  checkboxShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  side: const BorderSide(
                                    color: Color(0xff1d1d1d),
                                    width: 1,
                                  ),
                                  value: userSelectedSubjectsId
                                      .contains(state.subjectList![index].id),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value!) {
                                        userSelectedSubjectsId
                                            .add(state.subjectList![index].id!);
                                      } else {
                                        userSelectedSubjectsId.remove(
                                            state.subjectList![index].id);
                                      }
                                    });
                                  },
                                  title: Text(
                                    state.subjectList![index].name!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return const Center(
                                child: Text(
                                  'Tidak ada praktikum yang ditawarkan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              );
                            }
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.pushNamed(
                      'ringkasan-praktikum',
                      extra: RingkasanDaftarPageExtra(
                          userSelectedSubjectsId: UserSelectedSubjectsModel(
                              userSelectedSubjectsId)),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: const Color(0xff3272CA),
                      foregroundColor: const Color(0xfff4f4f9),
                    ),
                    child: const Text(
                      'Selanjutnya',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}