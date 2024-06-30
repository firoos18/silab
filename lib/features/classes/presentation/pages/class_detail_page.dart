import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/class_by_id/class_by_id_bloc.dart';

class ClassDetailPage extends StatefulWidget {
  final String? classId;

  const ClassDetailPage({super.key, required this.classId});

  @override
  State<ClassDetailPage> createState() => _ClassDetailPageState();
}

class _ClassDetailPageState extends State<ClassDetailPage> {
  @override
  void initState() {
    context
        .read<ClassByIdBloc>()
        .add(ClassDetailPageOpened(classId: widget.classId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: BlocBuilder<ClassByIdBloc, ClassByIdState>(
        builder: (context, state) {
          if (state is ClassByIdLoaded) {
            return Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.classEntity!.name!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${state.classEntity!.day!}, ${state.classEntity!.startAt!} - ${state.classEntity!.endAt!}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.classEntity!.participants!.length,
                    itemBuilder: (context, index) => Text(
                      state.classEntity!.participants![index].fullname!,
                    ),
                  ),
                ],
              ),
            );
          } else if (state is ClassByIdLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
