import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_pop_up.dart';
import 'package:silab/features/authentication/presentation/bloc/logout/logout_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state is LogOutSuccess) {
          context.goNamed('authentication', extra: FormType.login);
        }
      },
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => CustomPopUp(
              action: () {
                context.read<LogoutBloc>().add(LogOutButtonTapped());
              },
              body: 'Are you sure you want to Log Out?',
              title: 'Log Out',
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(double.infinity, 48),
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        child: BlocBuilder<LogoutBloc, LogoutState>(
          builder: (context, state) {
            if (state is LogOutLoading) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            } else {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 4),
                  Text('Log Out'),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
