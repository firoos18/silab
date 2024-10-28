import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    context.read<UserDetailsBloc>().add(GetUserDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: BlocConsumer<UserDetailsBloc, UserDetailsState>(
        listener: (context, state) {
          if (state is UserDetailFailed) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(snackBar(
                message: state.message,
                type: AlertType.error,
                action: () =>
                    context.read<UserDetailsBloc>().add(GetUserDetails()),
                actionLabel: 'Ulangi'));
          }
        },
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async =>
                context.read<UserDetailsBloc>().add(GetUserDetails()),
            color: const Color(0xff3272CA),
            backgroundColor: Colors.white,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            child: ListView(
              shrinkWrap: true,
              children: [
                _buildUserInitials(state),
                const SizedBox(height: 20),
                _buildUserDetails(
                  state,
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffBFD9EF),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/image/notepad.png',
                                scale: 2,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Status Pembayaran',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5E6278),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/image/chevron-right.png',
                            scale: 2,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        child: Divider(
                          color: const Color(0xff1d1d1d).withValues(alpha: 0.5),
                          thickness: 0.5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/image/tab-tablet.png',
                                scale: 2,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Riwayat Pembayaran',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5E6278),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/image/chevron-right.png',
                            scale: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildUserInitials(UserDetailsState state) {
    String? userInitials;

    if (state is UserDetailLoaded) {
      final List<String> fullname =
          state.userDetailEntity!.fullname!.split(' ');
      userInitials = fullname.length > 1
          ? '${fullname[0][0]}${fullname[1][0]}'
          : fullname[0];
    }

    return Skeletonizer(
      enabled: state is UserDetailLoading ? true : false,
      ignoreContainers: true,
      child: Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          color: const Color(0xffFBFBEF),
          border: Border.all(
            color: const Color(0xffFFBF01),
            width: 3,
          ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            userInitials ?? 'XX',
            style: const TextStyle(
              color: Color(0xffFFBF01),
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserDetails(
    UserDetailsState state,
  ) {
    String? fullname;
    String? nim;

    if (state is UserDetailLoaded) {
      fullname = state.userDetailEntity!.fullname;
      nim = state.userDetailEntity!.nim;
    }

    return Skeletonizer(
      enabled: state is UserDetailLoading ? true : false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            fullname ?? "Nama Lengkap",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            nim ?? "NIM",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
