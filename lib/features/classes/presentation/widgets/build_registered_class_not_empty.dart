import 'package:flutter/material.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/registered_class_card.dart';

class BuildRegisteredClassNotEmpty extends StatelessWidget {
  final int index;
  final UserRegisteredClassState state;

  const BuildRegisteredClassNotEmpty({
    super.key,
    required this.index,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: (state.registeredClasses != null &&
                index !=
                    state.registeredClasses!
                        .indexOf(state.registeredClasses![index]))
            ? 0
            : 8,
      ),
      child: RegisteredClassCard(
        classEntity: state.registeredClasses![index],
      ),
    );
  }
}
