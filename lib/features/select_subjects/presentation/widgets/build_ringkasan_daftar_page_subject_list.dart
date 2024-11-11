import 'package:flutter/material.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';

class BuildRingkasanDaftarPageSubjectList extends StatelessWidget {
  final List<SubjectEntity>? subjects;

  const BuildRingkasanDaftarPageSubjectList({
    super.key,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffBFD9EF),
          width: 2,
        ),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemExtent: 32,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: subjects!.length,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                subjects![index].subject_name!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'Semester ${subjects![index].semester!}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
