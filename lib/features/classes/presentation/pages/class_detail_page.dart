import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/classes/presentation/widgets/class_card.dart';
import 'package:silab/features/classes/presentation/widgets/class_details_tabview.dart';

class ClassDetailPageExtra {
  final ClassEntity classEntity;

  const ClassDetailPageExtra({required this.classEntity});
}

class ClassDetailPage extends StatefulWidget {
  final ClassDetailPageExtra classDetailPageExtra;

  const ClassDetailPage({super.key, required this.classDetailPageExtra});

  @override
  State<ClassDetailPage> createState() => _ClassDetailPageState();
}

class _ClassDetailPageState extends State<ClassDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClassCard(classEntity: widget.classDetailPageExtra.classEntity),
              const SizedBox(height: 24),
              const ClassDetailTabView()
            ],
          ),
        ),
      ),
    );
  }
}
