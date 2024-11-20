import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/schedule/presentation/widgets/build_schedule_page_failed.dart';
import 'package:silab/features/schedule/presentation/widgets/build_schedule_page_success.dart';

class BuildSchedulePageContent extends StatelessWidget {
  const BuildSchedulePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          context.read<UserScheduleBloc>().add(GetUserSchedule()),
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: const Color(0xff3272CA),
      backgroundColor: Colors.white,
      child: BlocConsumer<UserScheduleBloc, UserScheduleState>(
        listener: (context, state) {
          if (state is UserScheduleFailed) {
            if (state.message == 'jwt expired') {
              context.goNamed('authentication');
            } else {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                snackBar(
                  message: state.message,
                  type: AlertType.error,
                ),
              );
            }
          }
        },
        builder: (context, state) {
          if (state is UserScheduleFailed) {
            return const BuildSchedulePageFailed();
          } else {
            return BuildSchedulePageSuccess(state: state);
          }
        },
      ),
    );
  }
}
