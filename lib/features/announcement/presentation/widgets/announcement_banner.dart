import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/announcement/presentation/pages/pengumumman_page.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';

class AnnouncementBanner extends StatefulWidget {
  final String title;
  final String body;
  final String type;
  final String author;
  final String createdAt;

  const AnnouncementBanner({
    super.key,
    required this.author,
    required this.body,
    required this.title,
    required this.type,
    required this.createdAt,
  });

  @override
  State<AnnouncementBanner> createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends State<AnnouncementBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xffFE2F60),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width - 24,
                child: Text(
                  widget.body,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Container(
            width: 142,
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xffFFBF01),
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                switch (widget.type) {
                  case 'Practicum':
                    context
                        .read<SelectedSubjectByNimBloc>()
                        .add(GetUserSelectedSubjects());
                    break;
                  case 'Basic':
                    context.pushNamed(
                      'pengumuman',
                      extra: PengumumanPageExtra(
                        author: widget.author,
                        body: widget.body,
                        title: widget.title,
                        type: widget.type,
                        createdAt: widget.createdAt,
                      ),
                    );
                  default:
                    break;
                }
              },
              child: BlocConsumer<SelectedSubjectByNimBloc,
                  SelectedSubjectByNimState>(
                listener: (context, state) {
                  if (state is SelectedSubjectByNimLoaded) {
                    if (state.selectedSubjectEntity!.activationId == '' &&
                        state.selectedSubjectEntity!.subjects!.isEmpty) {
                      context.pushNamed('daftar-praktikum');
                    } else {
                      context.pushNamed('payment-status');
                    }
                  }
                },
                builder: (context, state) {
                  if (state is SelectedSubjectByNimLoading) {
                    return const CircularProgressIndicator();
                  }

                  return const Text(
                    'Pelajari lebih lanjut',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xff1d1d1d),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
