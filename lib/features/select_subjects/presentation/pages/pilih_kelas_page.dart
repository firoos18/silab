import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_pick_class_page_content.dart';

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
  @override
  void initState() {
    context
        .read<UserClassOptionByPaidSubjectBloc>()
        .add(GetUserClassOptionByPaidSubject());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 24),
        child: Material(
          color: Colors.white,
          child: BuildPickClassPageContent(),
        ),
      ),
    );
  }
}
