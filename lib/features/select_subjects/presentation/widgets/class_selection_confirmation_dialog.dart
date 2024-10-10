import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/classes/presentation/bloc/user_selected_classes/user_selected_classes_details_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ClassSelectionConfirmationDialog extends StatelessWidget {
  final List<String> selectedClasses;

  const ClassSelectionConfirmationDialog({
    super.key,
    required this.selectedClasses,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: const Text('Konfirmasi Pemilihan Kelas'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          child: const Text(
            'Kembali',
            style: TextStyle(
              color: Color(0xffFF0000),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
        TextButton(
          onPressed: () => context
              .read<AddSelectedClassBloc>()
              .add(AddSelectedClass(selectedClass: selectedClasses)),
          child: BlocConsumer<AddSelectedClassBloc, AddSelectedClassState>(
            listener: (context, state) {
              if (state is AddSelectedClassSuccess) {
                Navigator.of(context, rootNavigator: true).pop();
                context.pop();
              }
            },
            builder: (context, state) {
              return Skeletonizer(
                enabled: state is AddSelectedClassLoading ? true : false,
                enableSwitchAnimation: true,
                child: const Text(
                  'Simpan',
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              );
            },
          ),
        )
      ],
      content: BlocBuilder<UserSelectedClassesDetailsBloc,
          UserSelectedClassesDetailsState>(
        builder: (context, state) {
          return SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state is UserSelectedClassesDetailsLoaded &&
                      state.classesDetails != null
                  ? state.classesDetails!.length
                  : 1,
              itemBuilder: (context, index) => Skeletonizer(
                enabled:
                    state is UserSelectedClassesDetailsLoading ? true : false,
                enableSwitchAnimation: true,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.classesDetails != null
                            ? state.classesDetails![index].subject!.name!
                            : 'Mata Kuliah',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Kelas'),
                          Text(
                            state.classesDetails != null
                                ? state.classesDetails![index].name!
                                : 'X',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Jadwal'),
                          Text(
                            state.classesDetails != null
                                ? '${state.classesDetails![index].day!}, ${state.classesDetails![index].startAt!} - ${state.classesDetails![index].endAt!}'
                                : 'Hari, mulai - selesai',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                color: const Color(0xff1d1d1d).withOpacity(0.3),
                thickness: 0.5,
              ),
            ),
          );
        },
      ),
    );
  }
}
