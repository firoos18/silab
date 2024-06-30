import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/log_out_button.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';

class UserDetailPage extends StatefulWidget {
  const UserDetailPage({super.key});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  void initState() {
    context.read<UserDetailsBloc>().add(GetUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
            builder: (context, state) {
              if (state is UserDetailLoaded) {
                String? textAvatar;

                final String fullname = state.userDetailEntity!.fullname!;

                String firstName = fullname.split(' ')[0][0].toUpperCase();
                String lastName = fullname.split(' ')[1][0].toUpperCase();

                textAvatar = firstName + lastName;

                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 48,
                            child: Text(
                              textAvatar,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            state.userDetailEntity!.fullname!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            state.userDetailEntity!.email!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            state.userDetailEntity!.nim!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      const LogOutButton(),
                    ],
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
