import 'package:flutter/material.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/widgets/class_container.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ClassListView extends StatefulWidget {
  final SelectedSubjectByNimState state;
  final List<ClassEntity>? classes;
  final ValueChanged<String?> onClassChanged;
  final String? selectedClass;
  final bool? isRegistered;

  const ClassListView({
    super.key,
    required this.state,
    required this.classes,
    required this.onClassChanged,
    required this.selectedClass,
    required this.isRegistered,
  });

  @override
  State<ClassListView> createState() => _ClassListViewState();
}

class _ClassListViewState extends State<ClassListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.classes != null &&
              widget.classes!.isNotEmpty &&
              !widget.isRegistered!
          ? widget.classes!.length
          : 1,
      itemBuilder: (context, index) {
        if (widget.classes != null) {
          return Skeletonizer(
            enabled: (widget.state is SelectedSubjectByNimLoading ||
                    widget.classes == null)
                ? true
                : false,
            child: widget.classes!.isNotEmpty && !widget.isRegistered!
                ? ClassContainer(
                    classEntity: widget.classes != null
                        ? widget.classes![index]
                        : const ClassEntity(),
                    classes: widget.classes != null ? widget.classes! : [],
                    index: index,
                    selectedClass:
                        widget.classes != null ? widget.selectedClass : '',
                    onSelectedClassChanged: widget.classes != null
                        ? (value) => widget.onClassChanged(value)
                        : (value) {},
                    isFull: widget.classes != null
                        ? widget.classes![index].isFull
                        : false,
                  )
                : widget.isRegistered!
                    ? const Text(
                        'Anda sudah mendaftar kelas pada Mata Kuliah ini.',
                      )
                    : const Text(
                        'Kelas belum tersedia',
                      ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
