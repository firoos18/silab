import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:silab/features/schedule/domain/entities/practicums/practicums_entity.dart';

class PracticumsScheduleCard extends StatelessWidget {
  final List<PracticumsEntity>? practicumsEntity;

  const PracticumsScheduleCard({
    super.key,
    this.practicumsEntity,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: practicumsEntity?.length ?? 1,
      physics: const NeverScrollableScrollPhysics(),
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
                practicumsEntity?[idx].subject_class! ?? 'X',
                style: const TextStyle(
                  color: Color(0xffFFBF01),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    practicumsEntity?[idx].subject_name! ?? 'Mata Praktikum',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  practicumsEntity?[idx].session! ?? 'Sesi Kelas',
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
