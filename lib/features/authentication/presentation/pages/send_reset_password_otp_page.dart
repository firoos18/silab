import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/core/common/widgets/custom_textformfield.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/presentation/bloc/send_reset_password_otp/send_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/verify_reset_password_otp_page_extra.dart';

class SendResetPasswordOtpPage extends StatefulWidget {
  const SendResetPasswordOtpPage({super.key});

  @override
  State<SendResetPasswordOtpPage> createState() =>
      _SendResetPasswordOtpPageState();
}

class _SendResetPasswordOtpPageState extends State<SendResetPasswordOtpPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        backgroundColor: const Color(0xfff4f4f9),
      ),
      body: SafeArea(
        child:
            BlocListener<SendResetPasswordOtpBloc, SendResetPasswordOtpState>(
          listener: (context, state) {
            if (state is SendResetPasswordOtpLoading) {
              showDialog(
                context: context,
                useRootNavigator: false,
                builder: (context) => const CustomLoadingIndicator(),
              );
            } else if (state is SendResetPasswordOtpFailed) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context)
                  .showSnackBar(snackBar(state.message, AlertType.error));

              Navigator.of(context, rootNavigator: true).pop();
            } else if (state is SendResetPasswordOtpSuccess) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context)
                  .showSnackBar(snackBar("OTP Code Sent", AlertType.info));

              Navigator.of(context, rootNavigator: true).pop();

              context.pushNamed(
                'verify-reset-password-otp',
                extra: VerifyResetPasswordOtpPageExtra(
                    email:
                        state.sendResetPasswordOtpResponseEntity!.data!.email,
                    userId:
                        state.sendResetPasswordOtpResponseEntity!.data!.userId),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 95),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/image/sisinfo-blue.png',
                  width: 160,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 64),
                const Text(
                  "Please provide email and a verification OTP Code will be sent to your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1d1d1d),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  hintText: 'Email Address',
                  controller: _emailController,
                  isObscure: false,
                  prefixIcon: Boxicons.bx_envelope,
                ),
                const SizedBox(height: 90),
                CustomLargeButton(
                  onPressed: () {
                    final email = _emailController.text.trim();

                    context.read<SendResetPasswordOtpBloc>().add(
                          SendResetPasswordOtpButtonTapped(
                              sendResetPasswordData:
                                  SendResetPasswordOtpModel(email: email)),
                        );
                  },
                  text: 'Confirm',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
