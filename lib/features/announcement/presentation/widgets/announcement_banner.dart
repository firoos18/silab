import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/announcement/presentation/pages/pengumumman_page.dart';

class AnnouncementBanner extends StatelessWidget {
  final String title;
  final String desc;
  final String type;
  final String? posterUrl;

  const AnnouncementBanner({
    super.key,
    required this.desc,
    this.posterUrl,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      decoration: BoxDecoration(
        color: const Color(0xfff4f4f9),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: MediaQuery.of(context).size.width - 24,
            child: Text(
              desc,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 8),
          InkWell(
            onTap: () {
              switch (type) {
                case 'praktikum':
                  context.pushNamed('daftar-praktikum');
                  break;
                case 'pengumuman':
                  context.pushNamed('pengumuman',
                      extra: PengumumanPageExtra(posterUrl: posterUrl));
                default:
                  break;
              }
            },
            child: const Text(
              'Pelajari lebih lanjut...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xff3272CA),
              ),
            ),
          )
        ],
      ),
    );
  }
}
