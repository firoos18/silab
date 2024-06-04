import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';

class ClassCard extends StatelessWidget {
  final ClassEntity classEntity;

  const ClassCard({super.key, required this.classEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(classEntity.name!),
        ],
      ),
    );
  }
}
