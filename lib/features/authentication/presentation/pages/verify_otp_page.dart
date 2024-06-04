import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_otp/resend_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_otp/verify_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyOtpPage extends StatefulWidget {
  final VerifyOtpPageExtra verifyOtpPageExtra;

  const VerifyOtpPage({super.key, required this.verifyOtpPageExtra});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify OTP Code"),
      ),
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<VerifyOtpBloc, VerifyOtpState>(
              listener: (context, state) {
                if (state is VerifyOtpLoading) {
                  showDialog(
                    context: context,
                    useRootNavigator: false,
                    builder: (context) => const CustomLoadingIndicator(),
                  );
                } else if (state is VerifyOtpFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(state.message, AlertType.error),
                  );

                  Navigator.of(context, rootNavigator: true).pop();
                } else if (state is VerifyOtpSuccess) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar("User Verifiend Successfully", AlertType.success),
                  );

                  context.goNamed('authentication', extra: FormType.login);
                }
              },
            ),
            BlocListener<ResendOtpBloc, ResendOtpState>(
              listener: (context, state) {
                if (state is ResendOtpLoading) {
                  showDialog(
                    context: context,
                    useRootNavigator: true,
                    builder: (context) => const CustomLoadingIndicator(),
                  );
                } else if (state is ResendOtpFailed) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackBar(state.message, AlertType.error));

                  Navigator.of(context, rootNavigator: true).pop();
                } else if (state is ResendOtpSuccess) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackBar(
                      "New OTP Code has been Sent to Your Email",
                      AlertType.success,
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
                    "Input the OTP Code that has been sent to your email.",
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
                            seconds: 60 * 5,
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
                                "$minutes:$seconds",
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
                                    final ResendOtpModel resendOtpData =
                                        ResendOtpModel(
                                      email: widget.verifyOtpPageExtra.email,
                                      userId: widget.verifyOtpPageExtra.userId,
                                    );

                                    context.read<ResendOtpBloc>().add(
                                        ResendOtpButtonTapped(
                                            resendOtpData: resendOtpData));
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
                                  "Resend OTP Code",
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
                      ElevatedButton(
                        onPressed: () {
                          VerifyOtpModel verifyOtpData = VerifyOtpModel(
                            userId: widget.verifyOtpPageExtra.userId,
                            otp: _otpController.text.trim(),
                          );

                          context.read<VerifyOtpBloc>().add(
                              VerifyOtpButtonTapped(
                                  verifyOtpData: verifyOtpData));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text("Verify OTP Code"),
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