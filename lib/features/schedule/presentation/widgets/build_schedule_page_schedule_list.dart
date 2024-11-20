import 'package:flutter/material.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/schedule/presentation/widgets/practicums_schedule_card.dart';

class BuildSchedulePageScheduleList extends StatelessWidget {
  final UserScheduleState state;
  final int index;

  const BuildSchedulePageScheduleList({
    super.key,
    required this.index,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            state.schedules != null && state.schedules![index].day != null
                ? state.schedules![index].day!
                : '',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          PracticumsScheduleCard(
            practicumsEntity:
                state.schedules?[index].practicums?.reversed.toList() ?? [],
          )
        ],
      ),
    );
  }
}
