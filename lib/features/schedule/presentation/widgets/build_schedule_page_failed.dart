import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';

class BuildSchedulePageFailed extends StatelessWidget {
  const BuildSchedulePageFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
  }
}
