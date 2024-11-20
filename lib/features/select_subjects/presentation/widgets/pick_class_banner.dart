import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_state.dart';

class PickClassBanner extends StatefulWidget {
  const PickClassBanner({super.key});

  @override
  State<PickClassBanner> createState() => _PickClassBannerState();
}

class _PickClassBannerState extends State<PickClassBanner> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserClassOptionByPaidSubjectBloc,
        UserClassOptionByPaidSubjectState>(
      builder: (context, state) {
        if (state is UserClassOptionByPaidSubjectLoaded) {
          if (state.userClassOptionByPaidSubjectEntity!.isNotEmpty) {
            final Set<String> subjects = {};

            for (var subject in state.userClassOptionByPaidSubjectEntity!) {
              subjects.add(subject.subject_name!);
            }

            return InkWell(
              onTap: () => context.goNamed('pilih-kelas'),
              radius: 16,
              child: Container(
                width: double.maxFinite,
                height: 72,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xff50CD89),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/check-circle.png',
                      scale: 2,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        'Anda dapat memilih kelas untuk ${subjects.length} Mata Kuliah',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Icon(
                      Boxicons.bx_chevron_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        }

        return const SizedBox();
      },
    );
  }
}
