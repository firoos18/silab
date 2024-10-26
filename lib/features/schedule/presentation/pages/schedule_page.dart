import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/schedule/presentation/widgets/practicums_schedule_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  void initState() {
    context.read<UserScheduleBloc>().add(GetUserSchedule());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
        ),
        child: BlocBuilder<UserScheduleBloc, UserScheduleState>(
          builder: (context, state) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.schedules?.length ?? 1,
              itemBuilder: (context, index) {
                if (state is UserScheduleSuccess &&
                    state.schedules != null &&
                    state.schedules!.isEmpty) {
                  return const Center(
                    child: Text(
                      'Anda Belum Terdaftar di Kelas Praktikum',
                      textAlign: TextAlign.center,
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Skeletonizer(
                      enabled: state is UserScheduleLoading &&
                          state.schedules == null,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            state.schedules != null &&
                                    state.schedules![index].day != null
                                ? state.schedules![index].day!
                                : 'Hari',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          PracticumsScheduleCard(
                            practicumsEntity:
                                state.schedules![index].practicums!,
                          )
                        ],
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
