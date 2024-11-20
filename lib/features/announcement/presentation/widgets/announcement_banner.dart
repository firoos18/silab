import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/announcement/presentation/pages/pengumumman_page.dart';

class AnnouncementBanner extends StatefulWidget {
  final String title;
  final String body;
  final String type;
  final String author;
  final String createdAt;
  final String id;

  const AnnouncementBanner({
    super.key,
    required this.author,
    required this.body,
    required this.title,
    required this.type,
    required this.createdAt,
    required this.id,
  });

  @override
  State<AnnouncementBanner> createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends State<AnnouncementBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xffFE2F60),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width - 24,
                child: Text(
                  widget.body,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
            ],
          ),
          Container(
            width: 142,
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xffFFBF01),
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                switch (widget.type) {
                  case 'Practicum':
                    context.goNamed('daftar-praktikum');
                    break;
                  case 'Basic':
                    context.goNamed('pengumuman',
                        extra: PengumumanPageExtra(
                          author: widget.author,
                          body: widget.body,
                          title: widget.title,
                          type: widget.type,
                          createdAt: widget.createdAt,
                        ),
                        pathParameters: {
                          'id': widget.id,
                        });
                  default:
                    break;
                }
              },
              child: const Text(
                'Pelajari lebih lanjut',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color(0xff1d1d1d),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
