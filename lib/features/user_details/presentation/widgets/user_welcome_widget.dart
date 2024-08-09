import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
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
                state.userDetailEntity?.fullname ?? 'User Fullname',
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
