import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';

class BuildRegisteredClassFailed extends StatelessWidget {
  const BuildRegisteredClassFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Oops sebuah kesalahan terjadi!',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          IconButton(
            onPressed: () => context
                .read<UserRegisteredClassBloc>()
                .add(GetUserRegisteredClass()),
            icon: const Icon(Boxicons.bx_refresh),
          ),
        ],
      ),
    );
  }
}
