import 'package:flutter/material.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';

class ClassOptionList extends StatelessWidget {
  final List<UserClassOptionByPaidSubjectEntity> classes;
  final ValueChanged<String?> onClassChanged;
  final String? selectedClass;

  const ClassOptionList({
    super.key,
    required this.classes,
    required this.onClassChanged,
    required this.selectedClass,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: classes.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(
            bottom: index != classes.indexOf(classes.last) ? 12 : 0),
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () => onClassChanged(classes[index].class_id),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0xffBFD9EF),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                  value: classes[index].class_id,
                  groupValue: selectedClass,
                  onChanged: (value) => onClassChanged(value),
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        classes[index].subject_class!,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        classes[index].session_time!,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '${classes[index].registered_students}/${classes[index].quota}',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
