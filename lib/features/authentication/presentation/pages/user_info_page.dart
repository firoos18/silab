import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/core/common/widgets/custom_textformfield.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/user_info_page_extra.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page_extra.dart';

class UserInfoPage extends StatefulWidget {
  final UserInfoPageExtra userInfoPageExtra;

  const UserInfoPage({
    super.key,
    required this.userInfoPageExtra,
  });

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _waController = TextEditingController();

  @override
  void dispose() {
    _fullnameController.dispose();
    _nimController.dispose();
    _waController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state is RegisterLoading) {
            showDialog(
              context: context,
              useRootNavigator: false,
              builder: (context) => const CustomLoadingIndicator(),
            );
          } else if (state is RegisterFailed) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context)
                .showSnackBar(snackBar(state.message, AlertType.error));

            Navigator.of(context, rootNavigator: true).pop();
          } else if (state is RegisterSuccess) {
            context.pushNamed(
              'verify-otp',
              extra: VerifyOtpPageExtra(
                email: state.registerData!.email,
                userId: state.registerData!.userId,
              ),
            );
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
                  margin: const EdgeInsets.only(bottom: 64, top: 95),
                  child: Image.asset(
                    'assets/image/sisinfo-blue.png',
                    width: 160,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            hintText: 'Nama Lengkap',
                            controller: _fullnameController,
                            isObscure: false,
                            prefixIcon: Boxicons.bx_user,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Nama lengkap tidak boleh kosong!";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            hintText: 'NIM',
                            controller: _nimController,
                            isObscure: false,
                            prefixIcon: Boxicons.bx_id_card,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "NIM tidak boleh kosong!";
                              } else if (value.length < 10) {
                                return "Isikan dengan NIM yang sesuai";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          CustomTextFormField(
                            hintText: 'Nomor Telepon (WA)',
                            controller: _waController,
                            isObscure: false,
                            prefixIcon: Boxicons.bx_phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Nomor Telepon tidak boleh kosong!";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      margin: const EdgeInsets.only(top: 140),
                      child: CustomLargeButton(
                        onPressed: () {
                          final String fullname =
                              _fullnameController.text.trim();
                          final String nim = _nimController.text.trim();
                          final String phoneNumber = _waController.text.trim();

                          final RegisterModel registerModel = RegisterModel(
                            email: widget.userInfoPageExtra.email,
                            password: widget.userInfoPageExtra.password,
                            repeatPassword:
                                widget.userInfoPageExtra.repeatPassword,
                            fullname: fullname,
                            nim: nim,
                            phoneNumber: phoneNumber,
                          );

                          context.read<RegisterBloc>().add(
                                RegisterButtonTapped(
                                    registerData: registerModel),
                              );
                        },
                        text: 'Daftar',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
