import 'package:flutter/cupertino.dart';
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
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllAnnouncementsBloc, GetAllAnnouncementsState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        child: SizedBox(
          width: double.infinity,
          height: 119,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
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
                  child: AnnouncementBanner(
                    desc: state.announcements != null &&
                            state is GetAllAnnouncementsLoaded
                        ? state.announcements![index].desc!
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
              Positioned(
                bottom: 20,
                child: SizedBox(
                  height: 12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state is GetAllAnnouncementsLoaded &&
                            state.announcements != null
                        ? state.announcements!.length
                        : 1,
                    itemBuilder: (context, index) => Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? const Color(0xffFFBF01)
                            : const Color(0xffFFBF01).withOpacity(0.45),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
