import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classEntity;

  const ClassCard({super.key, required this.classEntity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        'class',
        pathParameters: {'id': classEntity.id!},
      ),
      borderRadius: BorderRadius.circular(8),
      radius: 150,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 2),
              blurRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classEntity.name!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${classEntity.day!}, ${classEntity.startAt!} - ${classEntity.startAt!}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${classEntity.participants!.length} / ${classEntity.quota}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
