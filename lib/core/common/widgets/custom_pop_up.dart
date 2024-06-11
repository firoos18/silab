import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';

class CustomPopUp extends StatelessWidget {
  final String title;
  final String body;
  final Function() action;

  const CustomPopUp({
    super.key,
    required this.action,
    required this.body,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(
            onPressed: () {
              action();

              context.pop();
              context.pop();

              context
                  .read<SelectedSubjectByNimBloc>()
                  .add(GetUserSelectedSubjects());
            },
            child: const Text('Confirm')),
        TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel')),
      ],
    );
  }
}
