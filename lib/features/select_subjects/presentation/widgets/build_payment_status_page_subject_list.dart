import 'package:flutter/material.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_payment_status_page_subject_item.dart';

class BuildPaymentStatusPageSubjectList extends StatelessWidget {
  final SelectedSubjectByNimState state;

  const BuildPaymentStatusPageSubjectList({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color:
                          state.selectedSubjectEntity![index].status! == 'Paid'
                              ? const Color(0xffE8FFF3)
                              : const Color(0xffFBFBEF),
                      border: Border.all(
                        color: state.selectedSubjectEntity![index].status! ==
                                'Paid'
                            ? const Color(0xff50CD89)
                            : const Color(0xffFFBF01),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      state.selectedSubjectEntity![index].status!,
                      style: TextStyle(
                        color: state.selectedSubjectEntity![index].status! ==
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
                  itemCount:
                      state.selectedSubjectEntity![index].subjects!.length,
                  itemBuilder: (context, idx) {
                    return BuildPaymentStatusPageSubjectItem(
                      state: state,
                      index: index,
                      idx: idx,
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
}
