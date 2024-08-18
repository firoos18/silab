import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/core/common/widgets/custom_textformfield.dart';
import 'package:silab/features/authentication/data/models/reset_password_model.dart';
import 'package:silab/features/authentication/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';

class ResetPasswordPage extends StatefulWidget {
  final String? userId;

  const ResetPasswordPage({super.key, required this.userId});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _repeatNewPasswordController =
      TextEditingController();

  bool showPassword = true;
  bool showRepeatPassword = true;
  late String? newPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reset Password",
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
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
            if (state is ResetPasswordLoading) {
              showDialog(
                context: context,
                useRootNavigator: false,
                builder: (context) => const CustomLoadingIndicator(),
              );
            } else if (state is ResetPasswordFailed) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                snackBar(
                  message: state.message,
                  type: AlertType.error,
                ),
              );

              Navigator.of(context, rootNavigator: true).pop();
            } else if (state is ResetPasswordSuccess) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                snackBar(
                  message: "Password Berhasil Diubah",
                  type: AlertType.success,
                ),
              );

              Navigator.of(context, rootNavigator: true).pop();
              context.goNamed('authentication', extra: FormType.login);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 95),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/sisinfo-blue.png',
                    width: 160,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 64),
                  const Row(
                    children: [
                      Text("Masukkan Kombinasi Password Baru"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: "Password Baru",
                    controller: _newPasswordController,
                    isObscure: true,
                    prefixIcon: Boxicons.bx_lock,
                    suffixIcon: Boxicons.bx_show,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password tidak boleh kosong";
                      } else if (value.length < 8) {
                        return "Password minimal berjumlah 8 karakter";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        newPassword = value;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: "Ulangi Password Baru",
                    controller: _repeatNewPasswordController,
                    isObscure: true,
                    prefixIcon: Boxicons.bx_lock,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password tidak boleh kosong";
                      } else if (value.length < 8) {
                        return "Password minimal berjumlah 8 karakter";
                      } else if (value != newPassword) {
                        return "Kombinasi password tidak sesuai";
                      }
                      return null;
                    },
                    suffixIcon: Boxicons.bx_show,
                  ),
                  const SizedBox(height: 16),
                  CustomLargeButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final String newPassword =
                            _newPasswordController.text.trim();
                        final String repeatNewPassword =
                            _repeatNewPasswordController.text.trim();

                        final ResetPasswordModel resetPasswordData =
                            ResetPasswordModel(
                          newPassword: newPassword,
                          repeatNewPassword: repeatNewPassword,
                          userId: widget.userId,
                        );

                        context.read<ResetPasswordBloc>().add(
                            ResetPasswordButtonTapped(
                                resetPasswordData: resetPasswordData));
                      }
                    },
                    text: 'Konfirmasi',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
