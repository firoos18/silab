import 'package:flutter/material.dart';

class BuildRegisteredClassEmpty extends StatelessWidget {
  const BuildRegisteredClassEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120),
      child: Center(
        child: SizedBox(
          width: 240,
          child: Column(
            children: [
              Image.asset(
                'assets/image/empty-assets.png',
                scale: 2,
              ),
              const SizedBox(height: 16),
              const Text(
                'Oops! Tidak ada kelas. Anda belum terdaftar di kelas apapun',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
