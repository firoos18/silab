import 'package:flutter/material.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_pick_class_page_subject_item.dart';

class BuildPickClassPageSubjectClassOption extends StatelessWidget {
  final Map<String?, List<UserClassOptionByPaidSubjectEntity>> groupedClasses;
  final Map<String, String> selectedClasses;
  final Function({String? subjectName, String? selectedClass}) onClassChanged;

  const BuildPickClassPageSubjectClassOption({
    super.key,
    required this.groupedClasses,
    required this.selectedClasses,
    required this.onClassChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: groupedClasses.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        color: const Color(0xff1d1d1d).withOpacity(0.5),
        thickness: 0.5,
      ),
      itemBuilder: (context, index) => BuildPickClassPageSubjectItem(
        groupedClasses: groupedClasses,
        index: index,
        onSelectedClassChanged: onClassChanged,
        selectedClasses: selectedClasses,
      ),
    );
  }
}
