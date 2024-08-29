import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/announcement/presentation/pages/pengumumman_page.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnnouncementBanner extends StatefulWidget {
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
  State<AnnouncementBanner> createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends State<AnnouncementBanner> {
  @override
  void initState() {
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xfff4f4f9),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: MediaQuery.of(context).size.width - 24,
            child: Text(
              widget.desc,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 8),
          BlocBuilder<SelectedSubjectByNimBloc, SelectedSubjectByNimState>(
            builder: (context, state) {
              return Skeletonizer(
                enabled: state is SelectedSubjectByNimLoading ? true : false,
                enableSwitchAnimation: true,
                child: InkWell(
                  onTap: () {
                    switch (widget.type) {
                      case 'praktikum':
                        state is SelectedSubjectByNimLoaded &&
                                state.selectedSubjectEntity!.subjects!.isEmpty
                            ? context.pushNamed('daftar-praktikum')
                            : context.pushNamed('payment-status');
                        break;
                      case 'pengumuman':
                        context.pushNamed('pengumuman',
                            extra: PengumumanPageExtra(
                                posterUrl: widget.posterUrl));
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
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
