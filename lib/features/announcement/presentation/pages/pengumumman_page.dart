import 'package:flutter/material.dart';

class PengumumanPageExtra {
  final String? posterUrl;

  const PengumumanPageExtra({this.posterUrl});
}

class PengumumanPage extends StatefulWidget {
  final PengumumanPageExtra pengumumanPageExtra;

  const PengumumanPage({super.key, required this.pengumumanPageExtra});

  @override
  State<PengumumanPage> createState() => _PengumumanPageState();
}

class _PengumumanPageState extends State<PengumumanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(
          widget.pengumumanPageExtra.posterUrl!,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return const Center(child: Icon(Icons.error));
          },
        ),
      ),
    );
  }
}
