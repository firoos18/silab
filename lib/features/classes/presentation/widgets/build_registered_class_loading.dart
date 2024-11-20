import 'package:flutter/material.dart';
import 'package:silab/features/classes/presentation/widgets/registered_class_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildRegisteredClassLoading extends StatelessWidget {
  const BuildRegisteredClassLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeletonizer(
      enabled: true,
      enableSwitchAnimation: true,
      child: RegisteredClassCard(),
    );
  }
}
