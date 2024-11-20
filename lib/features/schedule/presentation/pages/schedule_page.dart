import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/schedule/presentation/widgets/build_schedule_page_content.dart';

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
      child: const Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: BuildSchedulePageContent(),
        ),
      ),
    );
  }
}
