import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/authentication/presentation/bloc/logout/logout_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';
import 'package:silab/features/user_details/presentation/widgets/user_profile_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state is LogOutSuccess) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
              snackBar(message: 'Berhasil Keluar', type: AlertType.success));

          Future.delayed(const Duration(seconds: 1)).then(
            (value) => context.goNamed('authentication', extra: FormType.login),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          left: 15,
          top: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const UserProfileCard(),
            ElevatedButton(
              onPressed: () =>
                  context.read<LogoutBloc>().add(LogOutButtonTapped()),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF4A4A),
                foregroundColor: const Color(0xfff4f4f9),
                fixedSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
                alignment: Alignment.centerLeft,
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Boxicons.bx_exit),
                  SizedBox(width: 16),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
