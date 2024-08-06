import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';

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
        if (state is UserDetailLoading) {
          return const CupertinoActivityIndicator();
        } else if (state is UserDetailLoaded) {
          return Column(
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
                state.userDetailEntity!.fullname!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
