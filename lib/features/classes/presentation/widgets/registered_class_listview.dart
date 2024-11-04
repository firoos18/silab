import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_failed.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_success.dart';

class RegisteredClassListView extends StatefulWidget {
  const RegisteredClassListView({super.key});

  @override
  State<RegisteredClassListView> createState() =>
      _RegisteredClassListViewState();
}

class _RegisteredClassListViewState extends State<RegisteredClassListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserRegisteredClassBloc, UserRegisteredClassState>(
      builder: (context, state) {
        if (state is UserRegisteredClassFailed) {
          return const BuildRegisteredClassFailed();
        }
        return BuildRegisteredClassSuccess(state: state);
      },
    );
  }
}
