import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_reset_password_otp_model.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_reset_password_otp/resend_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_reset_password_otp/verify_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/verify_reset_password_otp_page_extra.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyResetPasswordOtpPage extends StatefulWidget {
  final VerifyResetPasswordOtpPageExtra verifyResetPasswordOtpPageExtra;

  const VerifyResetPasswordOtpPage(
      {super.key, required this.verifyResetPasswordOtpPageExtra});

  @override
  State<VerifyResetPasswordOtpPage> createState() =>
      _VerifyResetPasswordOtpPageState();
}

class _VerifyResetPasswordOtpPageState
    extends State<VerifyResetPasswordOtpPage> {
  final TextEditingController _otpController = TextEditingController();
  final CountdownController _timerController =
      CountdownController(autoStart: true);
  bool isTimerRunning = true;

  @override
  void initState() {
    setState(() {
      isTimerRunning = true;
    });
    super.initState();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verifikasi Kode OTP",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
          onTap: () => context.pop(),
          borderRadius: BorderRadius.circular(100),
          child: const Icon(
            Icons.chevron_left,
            size: 32,
          ),
        ),
        forceMaterialTransparency: false,
      ),
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<VerifyResetPasswordOtpBloc,
                VerifyResetPasswordOtpState>(
              listener: (context, state) {
                if (state is VerifyResetPasswordOtpLoading) {
                  showDialog(
                    context: context,
                    useRootNavigator: false,
                    builder: (context) => const CustomLoadingIndicator(),
                  );
                } else if (state is VerifyResetPasswordOtpFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(message: state.message, type: AlertType.error),
                  );

                  Navigator.of(context, rootNavigator: true).pop();
                } else if (state is VerifyResetPasswordOtpSuccess) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: "User Verifiend Successfully",
                      type: AlertType.success,
                    ),
                  );

                  Navigator.of(context, rootNavigator: true).pop();
                  context.pushNamed(
                    'reset-password',
                    extra: widget.verifyResetPasswordOtpPageExtra.userId,
                  );
                }
              },
            ),
            BlocListener<ResendResetPasswordOtpBloc,
                ResendResetPasswordOtpState>(
              listener: (context, state) {
                if (state is ResendResetPasswordOtpLoading) {
                  showDialog(
                    context: context,
                    useRootNavigator: true,
                    builder: (context) => const CustomLoadingIndicator(),
                  );
                } else if (state is ResendResetPasswordOtpFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: state.message,
                      type: AlertType.error,
                    ),
                  );

                  Navigator.of(context, rootNavigator: true).pop();
                } else if (state is ResendResetPasswordOtpSuccess) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      message: "New OTP Code has been Sent to Your Email",
                      type: AlertType.success,
                    ),
                  );

                  _timerController.restart();
                  setState(() {
                    isTimerRunning = true;
                  });

                  Navigator.of(context, rootNavigator: true).pop();
                }
              },
            ),
          ],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Masukkan kode OTP yang sudah dikirimkan ke Email anda.",
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Pinput(
                        controller: _otpController,
                        length: 4,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Countdown(
                            seconds: 60 * 3,
                            controller: _timerController,
                            onFinished: () {
                              setState(() {
                                isTimerRunning = false;
                              });
                            },
                            build: (_, double time) {
                              final minutes =
                                  Duration(seconds: time.toInt()).inMinutes;
                              final seconds =
                                  Duration(seconds: time.toInt()).inSeconds %
                                      60;

                              return Text(
                                "$minutes:${seconds >= 10 ? seconds : '0$seconds'}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: !isTimerRunning
                                ? () {
                                    final SendResetPasswordOtpModel
                                        resendOtpData =
                                        SendResetPasswordOtpModel(
                                      email: widget
                                          .verifyResetPasswordOtpPageExtra
                                          .email,
                                    );

                                    context
                                        .read<ResendResetPasswordOtpBloc>()
                                        .add(ResendResetPasswordOtpButtonTapped(
                                            sendResetPasswordOtpData:
                                                resendOtpData));
                                  }
                                : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.refresh_rounded,
                                  size: 16,
                                  color: !isTimerRunning
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Kirim ulang kode OTP",
                                  style: TextStyle(
                                    color: !isTimerRunning
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      CustomLargeButton(
                        onPressed: () {
                          VerifyResetPasswordOtpModel verifyOtpData =
                              VerifyResetPasswordOtpModel(
                            userId:
                                widget.verifyResetPasswordOtpPageExtra.userId,
                            otp: _otpController.text.trim(),
                          );

                          context.read<VerifyResetPasswordOtpBloc>().add(
                              VerifyResetPasswordOtpButtonTapped(
                                  verifyResetPasswordOtpData: verifyOtpData));
                        },
                        text: 'Verifikasi Kode OTP',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
