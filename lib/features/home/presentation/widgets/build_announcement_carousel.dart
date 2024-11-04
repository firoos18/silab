import 'package:flutter/material.dart';
import 'package:silab/features/announcement/presentation/widgets/announcement_carousel.dart';

class BuildAnnouncementCarousel extends StatelessWidget {
  const BuildAnnouncementCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 210,
      width: double.infinity,
      child: AnnouncementCarousel(),
    );
  }
}
