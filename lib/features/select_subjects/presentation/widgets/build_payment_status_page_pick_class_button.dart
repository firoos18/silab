import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_small_button.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';

class BuildPaymentStatusPagePickClassButton extends StatelessWidget {
  const BuildPaymentStatusPagePickClassButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserClassOptionByPaidSubjectBloc,
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
          onPressed: state.userClassOptionByPaidSubjectEntity != null &&
                  state.userClassOptionByPaidSubjectEntity!.isNotEmpty
              ? () => context.goNamed('pilih-kelas')
              : null,
        );
      },
    );
  }
}
