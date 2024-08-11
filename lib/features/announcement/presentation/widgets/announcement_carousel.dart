import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_banner.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnnouncementCarousel extends StatefulWidget {
  const AnnouncementCarousel({super.key});

  @override
  State<AnnouncementCarousel> createState() => _AnnouncementCarouselState();
}

class _AnnouncementCarouselState extends State<AnnouncementCarousel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllAnnouncementsBloc, GetAllAnnouncementsState>(
      builder: (context, state) {
        if (state is GetAllAnnouncementsLoading) {
          return Skeletonizer(
            enabled: true,
            enableSwitchAnimation: true,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.only(top: 40),
              child: const AnnouncementBanner(
                desc: 'Deskripsi Pengumuman',
                title: 'Judul Pengumuman',
                type: 'Tipe Pengumuman',
                posterUrl: 'Poster Pengumuman',
              ),
            ),
          );
        } else if (state is GetAllAnnouncementsLoaded) {
          if (state.announcements != null && state.announcements!.isEmpty) {
            return const Center(
              child: Text('Belum ada pengumuman untuk saat ini. Stay tuned!'),
            );
          }

          return ListView.builder(
            itemCount:
                state.announcements != null ? state.announcements!.length : 0,
            scrollDirection: Axis.horizontal,
            physics: const PageScrollPhysics(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.only(top: 40),
              child: AnnouncementBanner(
                desc: state.announcements![index].desc!,
                title: state.announcements![index].title!,
                type: state.announcements![index].type!,
                posterUrl: state.announcements![index].posterUrl,
              ),
            ),
          );
        } else {
          return const Skeletonizer(
            enabled: true,
            enableSwitchAnimation: true,
            child: AnnouncementBanner(
              desc: 'Deskripsi Pengumuman',
              title: 'Judul Pengumuman',
              type: 'Tipe Pengumuman',
              posterUrl: 'Poster Pengumuman',
            ),
          );
        }
      },
    );
  }
}
