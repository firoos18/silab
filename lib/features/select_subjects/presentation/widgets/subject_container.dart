import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/subjects/presentation/pages/subject_detail_page_extras.dart';

class SubjectContainer extends StatelessWidget {
  final String subjectTitle;
  final String subjectLecturer;
  final String classes;
  final String id;

  const SubjectContainer({
    super.key,
    required this.subjectLecturer,
    required this.subjectTitle,
    required this.classes,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          'subject-detail',
          pathParameters: {"id": id},
          extra: SubjectDetailPageExtras(
            subjectLecturer: subjectLecturer,
            subjectName: subjectTitle,
          ),
        );
      },
      radius: 75,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          color: Colors.white70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subjectTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  subjectLecturer,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Available Classes',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      classes,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Column(
              children: [
                Icon(Icons.chevron_right),
              ],
            )
          ],
        ),
      ),
    );
  }
}
