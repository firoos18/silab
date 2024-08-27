import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserProfileCard extends StatefulWidget {
  const UserProfileCard({super.key});

  @override
  State<UserProfileCard> createState() => _UserProfileCardState();
}

class _UserProfileCardState extends State<UserProfileCard> {
  SupabaseStreamBuilder? _stream;
  final GlobalKey _registrationTooltipKey = GlobalKey();
  final GlobalKey _paymentTooltipKey = GlobalKey();

  void _showRegistrationTooltip() {
    final dynamic tooltip = _registrationTooltipKey.currentState;
    tooltip.ensureTooltipVisible();
  }

  void _showPaymentTooltip() {
    final dynamic tooltip = _paymentTooltipKey.currentState;
    tooltip.ensureTooltipVisible();
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
  void initState() {
    getUserPaymentStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
      String? initials = '';

      if (state is UserDetailLoaded) {
        List<String> fullname = state.userDetailEntity!.fullname!.split(' ');
        String? firstName = fullname[0];
        String? secondName = fullname[1];
        initials = (firstName[0] + secondName[0]).toUpperCase();
      }

      return Skeletonizer(
        enabled: state is UserDetailLoading ? true : false,
        enableSwitchAnimation: true,
        child: Container(
          width: double.infinity,
          height: 140,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            color: Color(0xfff4f4f9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xff1d1d1d),
                    radius: 24,
                    child: Text(
                      initials,
                      style: const TextStyle(
                        color: Color(0xfff4f4f9),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.userDetailEntity != null
                            ? state.userDetailEntity!.fullname!
                            : 'User Fullname',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        state.userDetailEntity != null
                            ? state.userDetailEntity!.nim!
                            : '0000000000',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Status Pembayaran',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color:
                                      const Color(0xff1d1d1d).withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Tooltip(
                                key: _paymentTooltipKey,
                                message:
                                    'Pending apabila pembayaran belum di verifikasi oleh laboran.',
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                verticalOffset: 0,
                                textStyle: TextStyle(
                                  color:
                                      const Color(0xff1d1d1d).withOpacity(0.7),
                                ),
                                child: GestureDetector(
                                  onTap: _showPaymentTooltip,
                                  child: const Icon(
                                    Boxicons.bx_info_circle,
                                    size: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          StreamBuilder(
                            stream: _stream,
                            builder: (context, snapshot) => snapshot.hasData
                                ? Skeletonizer(
                                    enabled: snapshot.connectionState !=
                                            ConnectionState.active
                                        ? true
                                        : false,
                                    enableSwitchAnimation: true,
                                    child: Text(
                                      snapshot.data![0]['payment_status']
                                          ? 'Berhasil'
                                          : 'Pending',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: snapshot
                                                .data!.first['payment_status']
                                            ? const Color(0xff27A149)
                                            : const Color(0xffFAC730),
                                      ),
                                    ),
                                  )
                                : Skeletonizer(
                                    enabled: snapshot.connectionState !=
                                            ConnectionState.active
                                        ? true
                                        : false,
                                    enableSwitchAnimation: true,
                                    child: const Text(
                                      'Pending',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFAC730),
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: const Color(0xff1d1d1d).withOpacity(0.5),
                      thickness: 1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Status Registrasi',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color:
                                      const Color(0xff1d1d1d).withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Tooltip(
                                key: _registrationTooltipKey,
                                message:
                                    'Pending apabila proses registrasi kelas belum selesai.',
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                verticalOffset: 0,
                                textStyle: TextStyle(
                                  color:
                                      const Color(0xff1d1d1d).withOpacity(0.7),
                                ),
                                child: GestureDetector(
                                  onTap: _showRegistrationTooltip,
                                  child: const Icon(
                                    Boxicons.bx_info_circle,
                                    size: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          BlocBuilder<SelectedSubjectByNimBloc,
                              SelectedSubjectByNimState>(
                            builder: (context, state) => Skeletonizer(
                              enabled: state is SelectedSubjectByNimLoading &&
                                      state.selectedSubjectEntity == null
                                  ? true
                                  : false,
                              enableSwitchAnimation: true,
                              child: Text(
                                state.selectedSubjectEntity != null
                                    ? state.selectedSubjectEntity!.subjects!
                                            .isNotEmpty
                                        ? 'Berhasil'
                                        : 'Pending'
                                    : 'Pending',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: state.selectedSubjectEntity != null
                                      ? state.selectedSubjectEntity!.subjects!
                                              .isNotEmpty
                                          ? const Color(0xff27A149)
                                          : const Color(0xffFAC730)
                                      : const Color(0xffFAC730),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
