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
          onTap: int.parse(classes[index].quota!) ==
                  int.parse(classes[index].registered_students!)
              ? null
              : () => onClassChanged(classes[index].class_id),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: int.parse(classes[index].quota!) ==
                        int.parse(classes[index].registered_students!)
                    ? const Color(0xffe6e6e6)
                    : const Color(0xffBFD9EF),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              color: int.parse(classes[index].quota!) ==
                      int.parse(classes[index].registered_students!)
                  ? const Color(0xfff6f6f6)
                  : Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio<String?>(
                  value: classes[index].class_id,
                  groupValue: selectedClass,
                  onChanged: int.parse(classes[index].quota!) ==
                          int.parse(classes[index].registered_students!)
                      ? null // Disable the radio button
                      : (value) => onClassChanged(value),
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  toggleable: int.parse(classes[index].quota!) ==
                          int.parse(classes[index].registered_students!)
                      ? false
                      : true,
                  fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.disabled)) {
                      return const Color(0xff8d8d8d).withValues(alpha: 0.5);
                    }
                    return const Color(0xff3272CA);
                  }),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        classes[index].subject_class!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: int.parse(classes[index].quota!) ==
                                  int.parse(classes[index].registered_students!)
                              ? const Color(0xff8d8d8d)
                              : const Color(0xff1d1d1d),
                        ),
                      ),
                      Text(
                        "${classes[index].day}, ${classes[index].session_time!.split(' - ').map((time) => time.substring(0, 5)).join(' - ')}",
                        style: TextStyle(
                          fontSize: 14,
                          color: int.parse(classes[index].quota!) ==
                                  int.parse(classes[index].registered_students!)
                              ? const Color(0xff8d8d8d)
                              : const Color(0xff1d1d1d),
                        ),
                      ),
                      Text(
                        '${classes[index].registered_students}/${classes[index].quota}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: int.parse(classes[index].quota!) ==
                                  int.parse(classes[index].registered_students!)
                              ? const Color(0xffFF0000)
                              : int.parse(classes[index].quota!) -
                                          int.parse(classes[index]
                                              .registered_students!) <=
                                      5
                                  ? const Color(0xffFFBF01)
                                  : const Color(0xff1d1d1d),
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
