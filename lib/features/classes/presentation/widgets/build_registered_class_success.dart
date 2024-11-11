import 'package:flutter/material.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_empty.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_loading.dart';
import 'package:silab/features/classes/presentation/widgets/build_registered_class_not_empty.dart';

class BuildRegisteredClassSuccess extends StatelessWidget {
  final UserRegisteredClassState state;

  const BuildRegisteredClassSuccess({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/image/bookmark.png',
              scale: 2,
            ),
            const SizedBox(width: 8),
            const Text(
              'Kelas Terdaftar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
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
            itemBuilder: (context, index) => state is UserRegisteredClassLoading
                ? const BuildRegisteredClassLoading()
                : state.registeredClasses != null &&
                        state.registeredClasses!.isNotEmpty
                    ? BuildRegisteredClassNotEmpty(
                        index: index,
                        state: state,
                      )
                    : const BuildRegisteredClassEmpty(),
          ),
        ),
      ],
    );
  }
}
