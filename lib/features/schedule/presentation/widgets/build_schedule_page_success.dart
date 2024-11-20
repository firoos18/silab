import 'package:flutter/material.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/schedule/presentation/widgets/build_schedule_page_empty.dart';
import 'package:silab/features/schedule/presentation/widgets/build_schedule_page_schedule_list.dart';
import 'package:silab/features/schedule/presentation/widgets/build_scheulde_page_loading.dart';

class BuildSchedulePageSuccess extends StatelessWidget {
  final UserScheduleState state;

  const BuildSchedulePageSuccess({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListView.builder(
        itemCount: state.schedules != null && state.schedules!.isNotEmpty
            ? state.schedules!.length
            : 1,
        itemBuilder: (context, index) => state is UserScheduleLoading
            ? const BuildScheuldePageLoading()
            : state.schedules != null && state.schedules!.isNotEmpty
                ? BuildSchedulePageScheduleList(state: state, index: index)
                : const BuildSchedulePageEmpty(),
      ),
    );
  }
}
