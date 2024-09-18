import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PaymentStatusPage extends StatefulWidget {
  const PaymentStatusPage({super.key});

  @override
  State<PaymentStatusPage> createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
  bool? isVerified = false;

  @override
  void initState() {
    context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 24),
          child: Column(
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
                    Flexible(
                      fit: FlexFit.loose,
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
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 16,
                                    ),
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
                                                ? state
                                                    .selectedSubjectEntity!
                                                    .subjects![index]
                                                    .values
                                                    .single
                                                : 'Subject Name',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            state.selectedSubjectEntity != null
                                                ? 'Semester'
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
      ),
    );
  }
}
