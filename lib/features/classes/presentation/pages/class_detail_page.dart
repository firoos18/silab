import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/class_by_id/class_by_id_bloc.dart';

class ClassDetailPage extends StatelessWidget {
  final String? classId;

  const ClassDetailPage({super.key, required this.classId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassByIdBloc, ClassByIdState>(
      builder: (context, state) {
        if (state is ClassByIdLoaded) {
          return Center(
            child: Text(state.classEntity!.name!),
          );
        } else if (state is ClassByIdLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        return const SizedBox();
      },
    );
  }
}
