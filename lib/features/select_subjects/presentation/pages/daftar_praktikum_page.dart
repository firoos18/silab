import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/features/select_subjects/presentation/pages/ringkasan_daftar_page.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_daftar_praktikum_page_dropdown.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_daftar_praktikum_page_subject_empty.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_daftar_praktikum_subject_item.dart';
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
      child: SizedBox(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height -
            Scaffold.of(context).appBarMaxHeight!,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
          child: ListView(
            shrinkWrap: true,
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
      ),
    );
  }

  Widget _buildNextButton() {
    return CustomSmallButton(
      label: const Text(
        'Selanjutnya',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      onPressed: userSelectedSubjectsId.isNotEmpty
          ? () => context.pushNamed(
                'ringkasan-praktikum',
                extra: RingkasanDaftarPageExtra(
                  userSelectedSubjects: UserSelectedSubjectsModel(
                    userSelectedSubjectsId,
                  ),
                ),
              )
          : null,
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
        BuildDaftarPraktikumPageDropdown(
          currentValue: currentValue,
          onChanged: (value) => setState(() {
            currentValue = value!;
            context
                .read<SubjectListBloc>()
                .add(GetSubjectList(semester: value));
          }),
        ),
      ],
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
              shrinkWrap: true,
              padding: EdgeInsets.only(
                bottom:
                    state.subjectList != null && state.subjectList!.isNotEmpty
                        ? 0
                        : 36,
                top: state.subjectList != null && state.subjectList!.isNotEmpty
                    ? 0
                    : 36,
              ),
              itemBuilder: (context, index) =>
                  state.subjectList != null && state.subjectList!.isNotEmpty
                      ? BuildDaftarPraktikumSubjectItem(
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
                          index: index,
                          state: state,
                          userSelectedSubjectsId: userSelectedSubjectsId,
                        )
                      : const BuildDaftarPraktikumPageSubjectEmpty(),
            ),
          ),
        ),
      ),
    );
  }
}
