import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_ringkasan_daftar_page_subject_list.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_ringkasan_daftar_page_total_price.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RingkasanDaftarPageExtra {
  final UserSelectedSubjectsModel userSelectedSubjects;

  const RingkasanDaftarPageExtra({required this.userSelectedSubjects});
}

class RingkasanDaftarPage extends StatefulWidget {
  final RingkasanDaftarPageExtra ringkasanDaftarPageExtra;

  const RingkasanDaftarPage({
    super.key,
    required this.ringkasanDaftarPageExtra,
  });

  @override
  State<RingkasanDaftarPage> createState() => _RingkasanDaftarPageState();
}

class _RingkasanDaftarPageState extends State<RingkasanDaftarPage> {
  var subjectsTotal = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height -
            Scaffold.of(context).appBarMaxHeight!,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text(
                'Berikut adalah mata praktikum yang anda pilih. Sesuaikan dengan Mata Kuliah yang anda ambil di KRS.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Daftar Praktikum',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        BuildRingkasanDaftarPageSubjectList(
                          subjects: widget.ringkasanDaftarPageExtra
                              .userSelectedSubjects.subjects,
                        ),
                        const SizedBox(height: 8),
                        BuildRingkasanDaftarPageTotalPrice(
                          subjects: widget.ringkasanDaftarPageExtra
                              .userSelectedSubjects.subjects,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    CustomSmallButton(
                      label: const Text(
                        'Simpan',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () => showAdaptiveDialog(
                        useRootNavigator: true,
                        context: context,
                        builder: (context) => _buildAlertDialog(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlertDialog() {
    return AlertDialog(
      backgroundColor: const Color(0xfff4f4f9),
      title: const Text(
        'Simpan Pendaftaran',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        'Apakah anda yakin untuk menyimpan pendaftaran praktikum dan lanjutkan proses pembayaran?',
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
            List<String> userSelectedSubjectIds = widget
                .ringkasanDaftarPageExtra.userSelectedSubjects.subjects!
                .map((subject) => subject.id!)
                .toList();

            context.read<AddSelectedSubjectBloc>().add(
                  AddSelectedSubjectButtonTapped(
                      subjects: userSelectedSubjectIds),
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
            child:
                BlocConsumer<AddSelectedSubjectBloc, AddSelectedSubjectState>(
              listener: (context, state) {
                if (state is AddSelectedSubjectSuccess) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: 'Silakan Lanjutkan Proses Pembayaran',
                      type: AlertType.success,
                    ),
                  );
                  Navigator.of(context, rootNavigator: true).pop();
                  context.goNamed('payment-status');
                }
                if (state is AddSelectedSubjectFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: state.message,
                      type: AlertType.error,
                    ),
                  );
                  Navigator.pop(context, true);
                }
              },
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state is AddSelectedSubjectLoading ? true : false,
                  enableSwitchAnimation: true,
                  child: const Text(
                    'Simpan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3272CA),
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
