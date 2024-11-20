import 'package:flutter/material.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/build_announcement_indicators.dart';
import 'package:silab/features/announcement/presentation/widgets/build_announcement_page_view.dart';

class BuildAnnouncementSuccess extends StatelessWidget {
  final List<AnnouncementEntity> announcements;
  final GetAllAnnouncementsState state;
  final int currentPage;
  final Function(int)? onPageChanged;

  const BuildAnnouncementSuccess({
    super.key,
    required this.announcements,
    required this.currentPage,
    required this.onPageChanged,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Column(
          children: [
            BuildAnnouncementPageView(
              announcements: announcements,
              state: state,
              currentPage: currentPage,
              onPageChanged: onPageChanged,
            ),
            BuildAnnouncementIndicators(
              itemCount: announcements.length,
              currentPage: currentPage,
            ),
          ],
        ),
      ),
    );
  }
}
