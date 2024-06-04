import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/features/user_details/presentation/widgets/payment_status_pill.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (state is UserDetailLoaded) {
          String? textAvatar;

          final String fullname = state.userDetailEntity!.fullname!;

          String firstName = fullname.split(' ')[0][0].toUpperCase();
          String lastName = fullname.split(' ')[1][0].toUpperCase();

          textAvatar = firstName + lastName;

          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color(0xfff8f8f8),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  child: Text(
                    textAvatar,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(state.userDetailEntity!.fullname!),
                    Text(state.userDetailEntity!.nim!),
                    const SizedBox(height: 8),
                    PaymentStatusPill(
                        paymentStatus: state.userDetailEntity!.paid!),
                  ],
                ),
                const Spacer(flex: 6),
                const Icon(Icons.chevron_right)
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
