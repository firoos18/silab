import 'package:flutter/material.dart';
import 'package:silab/features/home/presentation/widgets/announcement_banner.dart';
import 'package:silab/features/home/presentation/widgets/class_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            AnnouncementBanner(),
            ClassList(),
          ],
        ),
      ),
    );
  }
}
