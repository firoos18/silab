import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildPickClassPageConfirmationDialog extends StatelessWidget {
  final List<String>? selectedClasses;

  const BuildPickClassPageConfirmationDialog({
    super.key,
    required this.selectedClasses,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xfff4f4f9),
      title: const Text('Simpan Pilihan Kelas'),
      content: const Text(
        'Apakah anda yakin untuk menyimpan kelas yang anda pilih?',
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.justify,
      ),
      actions: [
        InkWell(
          onTap: () => Navigator.of(context, rootNavigator: true).pop(),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffFF0000),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Kembali',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFF5F8),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.read<AddSelectedClassBloc>().add(
                  AddSelectedClass(
                    selectedClass: selectedClasses,
                  ),
                );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffBFD9EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: BlocConsumer<AddSelectedClassBloc, AddSelectedClassState>(
              listener: (context, state) {
                if (state is AddSelectedClassSuccess) {
                  Navigator.of(context, rootNavigator: true).pop();
                }
                if (state is AddSelectedClassFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: state.message,
                      type: AlertType.error,
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state is AddSelectedClassLoading ? true : false,
                  enableSwitchAnimation: true,
                  child: const Text(
                    'Simpan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
      alignment: Alignment.center,
      icon: SizedBox(
        height: 24,
        width: 24,
        child: Image.asset(
          'assets/image/info.png',
          scale: 2,
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
