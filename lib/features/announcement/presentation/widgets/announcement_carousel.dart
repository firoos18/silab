import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_banner.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnnouncementCarousel extends StatefulWidget {
  const AnnouncementCarousel({super.key});

  @override
  State<AnnouncementCarousel> createState() => _AnnouncementCarouselState();
}

class _AnnouncementCarouselState extends State<AnnouncementCarousel> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllAnnouncementsBloc, GetAllAnnouncementsState>(
        builder: (context, state) {
      if (state is GetAllAnnouncementsFailed) {
        return SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Oops, terjadi suatu kesalahan!'),
                IconButton(
                  onPressed: () => context
                      .read<GetAllAnnouncementsBloc>()
                      .add(GetAllAnnouncements()),
                  icon: const Icon(Boxicons.bx_refresh),
                ),
              ],
            ),
          ),
        );
      }
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: Column(
            children: [
              Flexible(
                child: PageView.builder(
                  pageSnapping: true,
                  onPageChanged: (value) => setState(() {
                    currentPage = value;
                  }),
                  itemCount: state is GetAllAnnouncementsLoaded &&
                          state.announcements != null
                      ? state.announcements!.length
                      : 1,
                  itemBuilder: (context, index) => Skeletonizer(
                    enabled: state is GetAllAnnouncementsLoading ? true : false,
                    enableSwitchAnimation: true,
                    child: Container(
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
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
                width: double.maxFinite,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state is GetAllAnnouncementsLoaded &&
                            state.announcements != null
                        ? state.announcements!.length
                        : 1,
                    itemBuilder: (context, index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: currentPage != index ? 4 : 6,
                      height: currentPage != index ? 4 : 6,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? const Color(0xffFFBF01)
                            : const Color(0xffFFBF01).withValues(alpha: 0.45),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
