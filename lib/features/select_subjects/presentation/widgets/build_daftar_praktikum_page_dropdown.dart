import 'package:flutter/material.dart';

class BuildDaftarPraktikumPageDropdown extends StatelessWidget {
  final Function(int?)? onChanged;
  final int currentValue;

  const BuildDaftarPraktikumPageDropdown({
    super.key,
    required this.onChanged,
    required this.currentValue,
  });

  @override
  Widget build(BuildContext context) {
    final menuItems = List.generate(8, (i) {
      int semester = i + 1;
      return DropdownMenuItem(
          value: semester, child: Text('Semester $semester'));
    });

    return Container(
      width: 150,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color(0xffBFD9EF),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        items: menuItems,
        onChanged: onChanged,
        value: currentValue,
        underline: const SizedBox(),
        elevation: 100,
        icon: Image.asset(
          'assets/image/chevron_down_blue.png',
          scale: 2,
        ),
        enableFeedback: true,
        alignment: Alignment.centerLeft,
        isExpanded: true,
        style: const TextStyle(
          color: Color(0xff3272CA),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
