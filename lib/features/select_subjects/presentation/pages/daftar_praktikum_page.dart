import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/select_subjects/presentation/pages/ringkasan_daftar_page.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

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

  List<SubjectEntity> userSelectedSubjectsId = [];

  @override
  void initState() {
    context.read<SubjectListBloc>().add(GetSubjectList(semester: currentValue));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
        child: ListView(
          shrinkWrap: true,
          children: [
            _buildTitleText(),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildDropdownHeader(),
                  _buildSubjectList(),
                  const SizedBox(height: 16),
                  _buildNextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return const Text(
      'Pilihlah praktikum sesuai dengan Mata Kuliah yang anda ambil di KRS.',
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: () => context.pushNamed(
        'ringkasan-praktikum',
        extra: RingkasanDaftarPageExtra(
          userSelectedSubjects: UserSelectedSubjectsModel(
            userSelectedSubjectsId,
          ),
        ),
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
    );
  }

  Widget _buildDropdownHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Daftar Praktikum',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        _buildDropdown(),
      ],
    );
  }

  Widget _buildDropdown() {
    final menuItems = List.generate(8, (i) {
      int semester = i + 1;
      return DropdownMenuItem(
          value: semester, child: Text('Semester $semester'));
    });

    return Container(
      width: 150,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color(0xffBFD9EF),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        items: menuItems,
        onChanged: (value) => setState(() {
          currentValue = value!;
          context.read<SubjectListBloc>().add(GetSubjectList(semester: value));
        }),
        value: currentValue,
        underline: const SizedBox(),
        elevation: 100,
        icon: Image.asset(
          'assets/image/chevron_down_blue.png',
          scale: 2,
        ),
        enableFeedback: true,
        alignment: Alignment.centerLeft,
        isExpanded: true,
        style: const TextStyle(
          color: Color(0xff3272CA),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildSubjectList() {
    return Flexible(
      fit: FlexFit.loose,
      child: BlocBuilder<SubjectListBloc, SubjectListState>(
        builder: (context, state) => Skeletonizer(
          enabled: state is SubjectListLoading ? true : false,
          enableSwitchAnimation: true,
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: state is SubjectListLoading ||
                      (state.subjectList != null && state.subjectList!.isEmpty)
                  ? null
                  : Border.all(
                      color: const Color(0xffBFD9EF),
                      width: 2,
                    ),
            ),
            child: ListView.builder(
              itemCount:
                  state.subjectList != null && state.subjectList!.isNotEmpty
                      ? state.subjectList!.length
                      : 1,
              itemExtent: 40,
              shrinkWrap: true,
              padding: EdgeInsets.only(
                bottom:
                    state.subjectList != null && state.subjectList!.isNotEmpty
                        ? 16
                        : 36,
                top: state.subjectList != null && state.subjectList!.isNotEmpty
                    ? 0
                    : 36,
              ),
              itemBuilder: (context, index) =>
                  state.subjectList != null && state.subjectList!.isNotEmpty
                      ? CheckboxListTile.adaptive(
                          activeColor: const Color(0xff3272CA),
                          checkboxShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: const BorderSide(
                            color: Color(0xff1d1d1d),
                            width: 1,
                          ),
                          value: userSelectedSubjectsId.contains(
                              state.subjectList != null
                                  ? state.subjectList![index]
                                  : ''),
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                userSelectedSubjectsId
                                    .add(state.subjectList![index]);
                              } else {
                                userSelectedSubjectsId
                                    .remove(state.subjectList![index]);
                              }
                            });
                          },
                          title: Text(
                            state.subjectList != null
                                ? state.subjectList![index].subject_name!
                                : 'Subject Name',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      : const Center(
                          child: Text(
                            'Tidak ada praktikum yang ditawarkan',
                            style: TextStyle(
                              color: Color(0xff5E6278),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
            ),
          ),
        ),
      ),
    );
  }
}
