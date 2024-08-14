import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/subjects/data/models/user_selected_subjects/user_selected_subjects_model.dart';
import 'package:silab/features/subjects/presentation/bloc/user_selected_subjects_details/bloc/user_selected_subjects_details_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RingkasanDaftarPageExtra {
  final UserSelectedSubjectsModel userSelectedSubjectsId;

  const RingkasanDaftarPageExtra({required this.userSelectedSubjectsId});
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
  @override
  void initState() {
    context.read<UserSelectedSubjectsDetailsBloc>().add(
        GetUserSelectedSubjectsDetails(
            subjects: widget.ringkasanDaftarPageExtra.userSelectedSubjectsId));
    super.initState();
  }

  var subjectsTotal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
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
                  Expanded(
                    child: BlocBuilder<UserSelectedSubjectsDetailsBloc,
                        UserSelectedSubjectsDetailsState>(
                      builder: (context, state) {
                        return Skeletonizer(
                          enabled: state is UserSelectedSubjectsDetailsLoading
                              ? true
                              : false,
                          enableSwitchAnimation: true,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f9),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListView.builder(
                                    padding: const EdgeInsets.all(12),
                                    itemExtent: 32,
                                    itemCount: state.subjectDetails != null
                                        ? state.subjectDetails!.length
                                        : 0,
                                    itemBuilder: (context, index) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.subjectDetails != null
                                              ? state
                                                  .subjectDetails![index].name!
                                              : 'Subject Name',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          state.subjectDetails != null
                                              ? 'Semester ${state.subjectDetails![index].semester!}'
                                              : 'Semester 0',
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
                              Skeletonizer(
                                enabled:
                                    state is UserSelectedSubjectsDetailsLoading
                                        ? true
                                        : false,
                                enableSwitchAnimation: true,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Total',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      state.subjectDetails != null
                                          ? 'Rp${state.subjectDetails!.length * 5000}'
                                          : '0000',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
                            onTap: () =>
                                context.read<AddSelectedSubjectBloc>().add(
                                      AddSelectedSubjectButtonTapped(
                                          subjects: widget
                                              .ringkasanDaftarPageExtra
                                              .userSelectedSubjectsId
                                              .subjects),
                                    ),
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
                                    snackBar('Pendaftaran Praktikum Sukses',
                                        AlertType.success),
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
    );
  }
}
