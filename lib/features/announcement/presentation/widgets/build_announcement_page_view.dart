import 'package:flutter/material.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/build_announcement_banner.dart';

class BuildAnnouncementPageView extends StatelessWidget {
  final List<AnnouncementEntity> announcements;
  final GetAllAnnouncementsState state;
  final int currentPage;
  final Function(int)? onPageChanged;

  const BuildAnnouncementPageView({
    super.key,
    required this.announcements,
    required this.state,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: PageView.builder(
        pageSnapping: true,
        onPageChanged: onPageChanged,
        scrollDirection: Axis.horizontal,
        itemCount:
            state is GetAllAnnouncementsLoaded && announcements.length > 1
                ? announcements.length
                : 1,
        itemBuilder: (context, index) => BuildAnnouncementBanner(
          state: state,
          index: index,
          announcements: announcements,
        ),
      ),
    );
  }
}
