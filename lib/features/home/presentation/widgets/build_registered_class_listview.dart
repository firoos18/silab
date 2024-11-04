import 'package:flutter/material.dart';
import 'package:silab/features/classes/presentation/widgets/registered_class_listview.dart';

class BuildRegisteredClassListview extends StatelessWidget {
  const BuildRegisteredClassListview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: RegisteredClassListView(),
    );
  }
}
