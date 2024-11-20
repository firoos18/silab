import 'package:flutter/material.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_banner.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildAnnouncementBanner extends StatelessWidget {
  final GetAllAnnouncementsState state;
  final int index;
  final List<AnnouncementEntity> announcements;

  const BuildAnnouncementBanner({
    super.key,
    required this.announcements,
    required this.index,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: state is GetAllAnnouncementsLoading ? true : false,
      enableSwitchAnimation: true,
      child: announcements.isNotEmpty
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: AnnouncementBanner(
                id: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].id!
                    : 'id',
                createdAt: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].created_at!
                    : 'Created At',
                author: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].author!
                    : 'Author',
                body: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].body!
                    : 'Deskripsi',
                title: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].title!
                    : 'Judul',
                type: state.announcements != null &&
                        state is GetAllAnnouncementsLoaded
                    ? state.announcements![index].type!
                    : 'Tipe',
              ),
            )
          : const Center(
              child: Text('Tidak ada pengumuman untuk saat ini!'),
            ),
    );
  }
}
