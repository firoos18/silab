import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
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
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
        child: Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                height: 360,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: Container(
                            margin: const EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: const Color(0xfff4f4f9),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListView.builder(
                              padding: const EdgeInsets.all(12),
                              itemExtent: 32,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: widget.ringkasanDaftarPageExtra
                                  .userSelectedSubjects.subjects!.length,
                              itemBuilder: (context, index) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget
                                        .ringkasanDaftarPageExtra
                                        .userSelectedSubjects
                                        .subjects![index]
                                        .subject_name!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Semester ${widget.ringkasanDaftarPageExtra.userSelectedSubjects.subjects![index].semester!}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Rp${widget.ringkasanDaftarPageExtra.userSelectedSubjects.subjects!.length * 5000}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => showAdaptiveDialog(
                        useRootNavigator: true,
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Simpan Pendaftaran'),
                          content: const Text(
                            'Apakah anda yakin untuk menyimpan pendaftaran praktikum dan lanjutkan proses pembayaran?',
                          ),
                          actions: [
                            InkWell(
                              onTap: () =>
                                  Navigator.of(context, rootNavigator: true)
                                      .pop(),
                              child: const Text(
                                'Kembali',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF0000),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                List<String> userSelectedSubjectIds = widget
                                    .ringkasanDaftarPageExtra
                                    .userSelectedSubjects
                                    .subjects!
                                    .map((subject) => subject.id!)
                                    .toList();

                                context.read<AddSelectedSubjectBloc>().add(
                                      AddSelectedSubjectButtonTapped(
                                          subjects: userSelectedSubjectIds),
                                    );
                              },
                              child: BlocConsumer<AddSelectedSubjectBloc,
                                  AddSelectedSubjectState>(
                                listener: (context, state) {
                                  if (state is AddSelectedSubjectSuccess) {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                    context.goNamed('payment-status');
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      snackBar(
                                        message:
                                            'Silakan Lanjutkan Proses Pembayaran',
                                        type: AlertType.success,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
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
                                    enabled: state is AddSelectedSubjectLoading
                                        ? true
                                        : false,
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
                          ],
                          alignment: Alignment.center,
                          icon: const Icon(Boxicons.bx_info_circle),
                          actionsAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: const Color(0xff3272CA),
                        foregroundColor: const Color(0xfff4f4f9),
                      ),
                      child: const Text(
                        'Simpan',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
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
}
