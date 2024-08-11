import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    print(widget.pengumumanPageExtra.posterUrl);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pengumuman',
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
