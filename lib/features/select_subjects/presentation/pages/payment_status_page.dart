import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PaymentStatusPage extends StatefulWidget {
  const PaymentStatusPage({super.key});

  @override
  State<PaymentStatusPage> createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
  SupabaseStreamBuilder? _stream;
  bool? isVerified = false;

  @override
  void initState() {
    getUserPaymentStatus();
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  Future<void> getUserPaymentStatus() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final nim = sharedPrefs.getString('nim');
    setState(() {
      _stream = Supabase.instance.client
          .from('users')
          .stream(primaryKey: ['nim']).eq('nim', nim!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Selesaikan pembayaran anda. Status pembayaran anda akan diubah secara otomatis.',
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
                  Expanded(
                    child: BlocBuilder<SelectedSubjectByNimBloc,
                        SelectedSubjectByNimState>(
                      builder: (context, state) {
                        return Skeletonizer(
                          enabled: state is SelectedSubjectByNimLoading
                              ? true
                              : false,
                          enableSwitchAnimation: true,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff4f4f9),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    padding: const EdgeInsets.all(12),
                                    itemExtent: 32,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount:
                                        state.selectedSubjectEntity != null
                                            ? state.selectedSubjectEntity!
                                                .subjects!.length
                                            : 0,
                                    itemBuilder: (context, index) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.selectedSubjectEntity != null
                                              ? state.selectedSubjectEntity!
                                                  .subjects![index].name!
                                              : 'Subject Name',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          state.selectedSubjectEntity != null
                                              ? 'Semester ${state.selectedSubjectEntity!.subjects![index].semester!}'
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
                                enabled: state is SelectedSubjectByNimLoading
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
                                      state.selectedSubjectEntity != null
                                          ? 'Rp${state.selectedSubjectEntity!.subjects!.length * 5000}'
                                          : '0000',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              StreamBuilder(
                                stream: _stream,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Status Pembayaran',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Skeletonizer(
                                              enabled:
                                                  snapshot.connectionState !=
                                                          ConnectionState.active
                                                      ? true
                                                      : false,
                                              enableSwitchAnimation: true,
                                              child: Text(
                                                snapshot.data![0]
                                                        ['payment_status']
                                                    ? 'Berhasil'
                                                    : 'Pending',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: snapshot.data!.first[
                                                          'payment_status']
                                                      ? const Color(0xff27A149)
                                                      : const Color(0xffFAC730),
                                                ),
                                                textAlign: TextAlign.end,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        CustomSmallButton(
                                          label: 'Selanjutnya',
                                          onPressed: snapshot.data![0]
                                                  ['payment_status']
                                              ? () {
                                                  context.goNamed(
                                                    'pilih-kelas',
                                                  );
                                                }
                                              : null,
                                        )
                                      ],
                                    );
                                  } else {
                                    return const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Status Pembayaran',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Skeletonizer(
                                              enabled: true,
                                              enableSwitchAnimation: true,
                                              child: Text(
                                                'Pending',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.end,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 16),
                                        CustomSmallButton(
                                          label: 'Selanjutnya',
                                          onPressed: null,
                                        )
                                      ],
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        );
                      },
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
