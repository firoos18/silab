import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DaftarPraktikumPage extends StatefulWidget {
  const DaftarPraktikumPage({super.key});

  @override
  State<DaftarPraktikumPage> createState() => _DaftarPraktikumPageState();
}

class _DaftarPraktikumPageState extends State<DaftarPraktikumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pilih Praktikum',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
          onTap: () => context.pop(),
          borderRadius: BorderRadius.circular(100),
          child: const Icon(
            Icons.chevron_left,
            size: 32,
          ),
        ),
      ),
    );
  }
}
