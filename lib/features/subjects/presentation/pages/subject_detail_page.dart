import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details_bloc.dart';
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
          if (state is SubjectDetailLoaded) {
            return Center(
              child: Text(state.subjectEntity!.name!),
            );
          } else if (state is SubjectDetailLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
