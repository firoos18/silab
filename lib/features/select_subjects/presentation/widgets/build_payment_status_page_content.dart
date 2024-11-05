import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_event.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_payment_status_page_pick_class_button.dart';
import 'package:silab/features/select_subjects/presentation/widgets/build_payment_status_page_subject_list.dart';

class BuildPaymentStatusPageContent extends StatelessWidget {
  const BuildPaymentStatusPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<SelectedSubjectByNimBloc>().add(GetUserSelectedSubjects());
        context
            .read<UserClassOptionByPaidSubjectBloc>()
            .add(GetUserClassOptionByPaidSubject());
      },
      color: const Color(0xff3272CA),
      backgroundColor: Colors.white,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
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
                BlocConsumer<SelectedSubjectByNimBloc,
                    SelectedSubjectByNimState>(
                  listener: (context, state) {
                    if (state is SelectedSubjectByNimFailed) {
                      if (state.message == 'jwt expired') {
                        context.goNamed('authentication');
                      } else {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBar(
                            message: state.message,
                            type: AlertType.error,
                          ),
                        );
                      }
                    }
                  },
                  builder: (context, state) {
                    if (state is SelectedSubjectByNimLoaded) {
                      return BuildPaymentStatusPageSubjectList(
                        state: state,
                      );
                    }

                    return const SizedBox();
                  },
                ),
                const SizedBox(height: 24),
                const BuildPaymentStatusPagePickClassButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
