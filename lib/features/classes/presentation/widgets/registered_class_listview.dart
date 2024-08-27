import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/registered_class_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Kelas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.registeredClasses != null &&
                        state.registeredClasses!.isNotEmpty
                    ? state.registeredClasses!.length
                    : 1,
                itemBuilder: (context, index) => state
                        is UserRegisteredClassLoading
                    ? const Skeletonizer(
                        enabled: true,
                        enableSwitchAnimation: true,
                        child: RegisteredClassCard(),
                      )
                    : state.registeredClasses != null &&
                            state.registeredClasses!.isNotEmpty
                        ? Container(
                            margin: EdgeInsets.only(
                              bottom: (state.registeredClasses != null &&
                                      index !=
                                          state.registeredClasses!.indexOf(
                                              state.registeredClasses![index]))
                                  ? 0
                                  : 8,
                            ),
                            child: RegisteredClassCard(
                              classEntity: state.registeredClasses![index],
                            ))
                        : Container(
                            margin: const EdgeInsets.only(top: 120),
                            child: const Center(
                              child: SizedBox(
                                width: 240,
                                child: Text(
                                  'Oops! Tidak ada kelas. Anda belum terdaftar di kelas apapun',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
              ),
            ),
          ],
        );
      },
    );
  }
}
