import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
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
      height: MediaQuery.of(context).size.height -
          Scaffold.of(context).appBarMaxHeight!,
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
        if (state is UserScheduleFailed) {
          return Center(
            child: Column(
              children: [
                const Text('Terjadi suatu kesalahan, coba lagi!'),
                IconButton(
                  onPressed: () =>
                      context.read<UserScheduleBloc>().add(GetUserSchedule()),
                  icon: const Icon(Boxicons.bx_refresh),
                ),
              ],
            ),
          );
        } else {
          return RefreshIndicator(
            onRefresh: () async =>
                context.read<UserScheduleBloc>().add(GetUserSchedule()),
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            color: const Color(0xff3272CA),
            backgroundColor: Colors.white,
            child: ListView.builder(
              itemCount: state.schedules?.length ?? 1,
              itemBuilder: (context, index) {
                if (state.schedules == null) {
                  return _buildEmptySchedule();
                } else {
                  return _buildSchedule(state, index);
                }
              },
            ),
          );
        }
      },
    );
  }

  Widget _buildEmptySchedule() {
    return const Center(
      child: Text(
        'Anda Belum Terdaftar di Kelas Praktikum',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
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
                  : '',
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
