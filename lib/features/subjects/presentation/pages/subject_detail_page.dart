import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/classes/presentation/widgets/class_card.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details/subject_details_bloc.dart';
import 'package:silab/features/subjects/presentation/pages/subject_detail_page_extras.dart';

class SubjectDetailPage extends StatefulWidget {
  final SubjectDetailPageExtras subjectDetailPageExtras;
  final String id;

  const SubjectDetailPage({
    super.key,
    required this.subjectDetailPageExtras,
    required this.id,
  });

  @override
  State<SubjectDetailPage> createState() => _SubjectDetailPageState();
}

class _SubjectDetailPageState extends State<SubjectDetailPage> {
  @override
  void initState() {
    context
        .read<SubjectDetailsBloc>()
        .add(SubjectDetailPageOpened(subjectId: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subjectDetailPageExtras.subjectName),
      ),
      body: BlocBuilder<SubjectDetailsBloc, SubjectDetailsState>(
        builder: (context, state) {
          if (state is SubjectDetailLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (state is SubjectDetailLoaded) {
            return Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.subjectEntity!.name!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    state.subjectEntity!.lecturer!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Available Classes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.subjectEntity!.classes!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ClassCard(
                          classEntity: state.subjectEntity!.classes![index],
                        ),
                      );
                    },
                  )
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
