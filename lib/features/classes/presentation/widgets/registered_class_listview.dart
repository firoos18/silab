import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_failed.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_success.dart';

class RegisteredClassListView extends StatelessWidget {
  const RegisteredClassListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserRegisteredClassBloc, UserRegisteredClassState>(
      listener: (context, state) {
        if (state is UserRegisteredClassFailed) {
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
        if (state is UserRegisteredClassFailed) {
          return const BuildRegisteredClassFailed();
        }
        return BuildRegisteredClassSuccess(state: state);
      },
    );
  }
}
