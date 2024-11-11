import 'package:flutter/material.dart';

class BuildRegisteredClassEmpty extends StatelessWidget {
  const BuildRegisteredClassEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
