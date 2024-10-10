import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';

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
    context
        .read<UserClassOptionByPaidSubjectBloc>()
        .add(GetUserClassOptionByPaidSubject());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(right: 15, left: 15, top: 24, bottom: 16),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Daftar Aktivasi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<SelectedSubjectByNimBloc,
                      SelectedSubjectByNimState>(
                    builder: (context, state) {
                      if (state is SelectedSubjectByNimLoaded) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.selectedSubjectEntity?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                top: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Aktivasi Praktikum Ke - ${state.selectedSubjectEntity!.indexOf(state.selectedSubjectEntity![index]) + 1}',
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: state
                                                      .selectedSubjectEntity![
                                                          index]
                                                      .status! ==
                                                  'Paid'
                                              ? const Color(0xffE8FFF3)
                                              : const Color(0xffFBFBEF),
                                          border: Border.all(
                                            color: state
                                                        .selectedSubjectEntity![
                                                            index]
                                                        .status! ==
                                                    'Paid'
                                                ? const Color(0xff50CD89)
                                                : const Color(0xffFFBF01),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text(
                                          state.selectedSubjectEntity![index]
                                              .status!,
                                          style: TextStyle(
                                            color: state
                                                        .selectedSubjectEntity![
                                                            index]
                                                        .status! ==
                                                    'Paid'
                                                ? const Color(0xff27A149)
                                                : const Color(0xffFFBF01),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xffBFD9EF),
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: state
                                          .selectedSubjectEntity![index]
                                          .subjects!
                                          .length,
                                      itemBuilder: (context, idx) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                state
                                                    .selectedSubjectEntity![
                                                        index]
                                                    .subjects![idx]
                                                    .subject_name!,
                                              ),
                                              Text(
                                                'Semester ${state.selectedSubjectEntity![index].subjects![idx].semester!}',
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      }

                      return const SizedBox();
                    },
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<UserClassOptionByPaidSubjectBloc,
                      UserClassOptionByPaidSubjectState>(
                    builder: (context, state) {
                      return CustomSmallButton(
                        label: const Text(
                          'Pilih Kelas',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed:
                            state.userClassOptionByPaidSubjectEntity != null &&
                                    state.userClassOptionByPaidSubjectEntity!
                                        .isNotEmpty
                                ? () => context.goNamed('pilih-kelas')
                                : null,
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
