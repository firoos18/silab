import 'package:flutter/material.dart';

class BuildDaftarPraktikumPageSubjectEmpty extends StatelessWidget {
  const BuildDaftarPraktikumPageSubjectEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tidak ada praktikum yang ditawarkan',
        style: TextStyle(
          color: Color(0xff5E6278),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
