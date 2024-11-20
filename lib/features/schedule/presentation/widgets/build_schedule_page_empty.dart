import 'package:flutter/material.dart';

class BuildSchedulePageEmpty extends StatelessWidget {
  const BuildSchedulePageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          Scaffold.of(context).appBarMaxHeight!,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/empty-assets.png',
              scale: 2,
            ),
            const SizedBox(height: 16),
            const Text(
              'Anda Belum Terdaftar di Kelas Praktikum',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
