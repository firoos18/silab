import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/build_announcement_failed.dart';
import 'package:silab/features/announcement/presentation/widgets/build_announcement_success.dart';

class AnnouncementCarousel extends StatefulWidget {
  const AnnouncementCarousel({super.key});

  @override
  State<AnnouncementCarousel> createState() => _AnnouncementCarouselState();
}

class _AnnouncementCarouselState extends State<AnnouncementCarousel> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllAnnouncementsBloc, GetAllAnnouncementsState>(
      listener: (context, state) {
        if (state is GetAllAnnouncementsFailed) {
          if (state.message == 'jwt expired') {
            context.goNamed('authentication');
          } else {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              snackBar(
                type: AlertType.error,
                message: state.message,
              ),
            );
          }
        }
      },
      builder: (context, state) {
        final List<AnnouncementEntity> announcements =
            (state is GetAllAnnouncementsLoaded && state.announcements != null)
                ? state.announcements!
                : [];

        if (state is GetAllAnnouncementsFailed) {
          return const BuildAnnouncementFailed();
        }
        return BuildAnnouncementSuccess(
          announcements: announcements,
          currentPage: currentPage,
          onPageChanged: (value) => setState(() {
            currentPage = value;
          }),
          state: state,
        );
      },
    );
  }
}
