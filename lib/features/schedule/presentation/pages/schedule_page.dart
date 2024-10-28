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
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height,
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: _buildPageContent(),
        ),
      ),
    );
  }

  Widget _buildPageContent() {
    return BlocBuilder<UserScheduleBloc, UserScheduleState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async =>
              context.read<UserScheduleBloc>().add(GetUserSchedule()),
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          color: const Color(0xff3272CA),
          backgroundColor: Colors.white,
          child: ListView.builder(
            itemCount: state.schedules?.length ?? 1,
            itemBuilder: (context, index) {
              if (state is UserScheduleSuccess &&
                  state.schedules != null &&
                  state.schedules!.isEmpty) {
                return _buildEmptySchedule();
              } else {
                return _buildSchedule(state, index);
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildEmptySchedule() {
    return const Center(
      child: Text(
        'Anda Belum Terdaftar di Kelas Praktikum',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSchedule(UserScheduleState state, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Skeletonizer(
        enabled: state is UserScheduleLoading && state.schedules == null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.schedules != null && state.schedules![index].day != null
                  ? state.schedules![index].day!
                  : 'Hari',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            PracticumsScheduleCard(
              practicumsEntity: state.schedules?[index].practicums ?? [],
            )
          ],
        ),
      ),
    );
  }
}
