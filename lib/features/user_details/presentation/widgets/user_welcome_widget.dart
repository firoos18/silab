import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserWelcomeWidget extends StatefulWidget {
  const UserWelcomeWidget({super.key});

  @override
  State<UserWelcomeWidget> createState() => _UserWelcomeState();
}

class _UserWelcomeState extends State<UserWelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDetailsBloc, UserDetailsState>(
      listener: (context, state) {
        if (state is UserDetailFailed) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            snackBar(
              message: 'An Error Occurred!',
              type: AlertType.error,
              actionLabel: 'Retry',
              action: () =>
                  context.read<UserDetailsBloc>().add(GetUserDetails()),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is UserDetailFailed) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang,',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '-',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        }
        return Skeletonizer(
          enabled: state is UserDetailLoading ? true : false,
          enableSwitchAnimation: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selamat Datang,',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                (state is UserDetailLoaded && state.userDetailEntity != null)
                    ? state.userDetailEntity!.fullname!
                    : 'User Fullname',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
