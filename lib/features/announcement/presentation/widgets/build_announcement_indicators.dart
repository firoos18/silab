import 'package:flutter/material.dart';

class BuildAnnouncementIndicators extends StatelessWidget {
  final int itemCount;
  final int currentPage;

  const BuildAnnouncementIndicators({
    super.key,
    required this.itemCount,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: double.maxFinite,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: itemCount,
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
    );
  }
}
