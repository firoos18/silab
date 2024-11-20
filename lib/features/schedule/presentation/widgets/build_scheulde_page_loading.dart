import 'package:flutter/material.dart';
import 'package:silab/features/schedule/presentation/widgets/practicums_schedule_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildScheuldePageLoading extends StatelessWidget {
  const BuildScheuldePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeletonizer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hari',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          PracticumsScheduleCard()
        ],
      ),
    );
  }
}
