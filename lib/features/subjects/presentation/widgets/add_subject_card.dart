import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';

class AddSubjectCard extends StatefulWidget {
  final SubjectEntity subject;
  final ValueChanged<String?> subjectId;

  const AddSubjectCard({
    super.key,
    required this.subjectId,
    required this.subject,
  });

  @override
  State<AddSubjectCard> createState() => _AddSubjectCardState();
}

class _AddSubjectCardState extends State<AddSubjectCard> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.subject.name!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                widget.subject.lecturer!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
              if (value!) {
                widget.subjectId(widget.subject.id!);
              } else {
                widget.subjectId(null);
              }
            },
          ),
        ],
      ),
    );
  }
}
