import 'package:flutter/material.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';

class BuildRingkasanDaftarPageTotalPrice extends StatelessWidget {
  final List<SubjectEntity>? subjects;

  const BuildRingkasanDaftarPageTotalPrice({
    super.key,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Total',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          'Rp${subjects!.length * 5000}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
