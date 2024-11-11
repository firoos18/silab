import 'package:flutter/material.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';
import 'package:silab/features/select_subjects/presentation/widgets/class_option_list.dart';

class BuildPickClassPageSubjectItem extends StatelessWidget {
  final int index;
  final Map<String?, List<UserClassOptionByPaidSubjectEntity>> groupedClasses;
  final Map<String, String> selectedClasses;
  final Function({String? subjectName, String? selectedClass})
      onSelectedClassChanged;

  const BuildPickClassPageSubjectItem({
    super.key,
    required this.groupedClasses,
    required this.index,
    required this.selectedClasses,
    required this.onSelectedClassChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: index == 0 ? 0 : 32, bottom: 32),
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
            classes: groupedClasses[groupedClasses.keys.toList()[index]]!,
            onClassChanged: (value) => onSelectedClassChanged(
              subjectName: groupedClasses.keys.toList()[index]!,
              selectedClass: value,
            ),
            selectedClass: selectedClasses[groupedClasses.keys.toList()[index]],
          )
        ],
      ),
    );
  }
}
