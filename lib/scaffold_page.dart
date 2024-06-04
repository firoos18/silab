import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldPage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int currentIndex = 0;

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: "FIND"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
  ];

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentIndex == 0
              ? "Home"
              : currentIndex == 1
                  ? "Find"
                  : "Profile",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: widget.navigationShell,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          _goBranch(index);
        },
      ),
    );
  }
}
