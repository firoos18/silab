import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:silab/features/schedule/domain/entities/practicums/practicums_entity.dart';

class PracticumsScheduleCard extends StatelessWidget {
  final List<PracticumsEntity> practicumsEntity;

  const PracticumsScheduleCard({
    super.key,
    required this.practicumsEntity,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: practicumsEntity.length,
      itemBuilder: (context, idx) => Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffBFD9EF),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xffFBFBEF),
                border: Border.all(
                  color: const Color(0xffFFBF01),
                  width: 1.5,
                ),
              ),
              child: Text(
                practicumsEntity[idx].subject_class!,
                style: const TextStyle(
                  color: Color(0xffFFBF01),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  practicumsEntity[idx].subject_name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  practicumsEntity[idx].session!,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}