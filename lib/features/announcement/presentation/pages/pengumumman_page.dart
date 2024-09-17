import 'package:flutter/material.dart';

class PengumumanPageExtra {
  final String? title;
  final String? body;
  final String? type;
  final String? author;
  final String? createdAt;

  const PengumumanPageExtra({
    this.author,
    this.body,
    this.title,
    this.type,
    this.createdAt,
  });
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.pengumumanPageExtra.title!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${widget.pengumumanPageExtra.author!}, ${DateTime.parse(widget.pengumumanPageExtra.createdAt!).toLocal()}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff1d1d1d).withValues(alpha: 0.3),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                widget.pengumumanPageExtra.body!,
                style: const TextStyle(
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
