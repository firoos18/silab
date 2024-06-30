import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/core/common/widgets/custom_textformfield.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/send_reset_password_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/pages/user_info_page_extra.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';

class AuthenticationPage extends StatefulWidget {
  final FormType? formType;

  const AuthenticationPage({super.key, required this.formType});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  late FormType formType;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();

  String password = "";

  @override
  void initState() {
    if (widget.formType != null) {
      setState(() {
        formType = widget.formType!;
      });
    } else {
      setState(() {
        formType = FormType.register;
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginLoading) {
                showDialog(
                  context: context,
                  useRootNavigator: false,
                  builder: (context) => const CustomLoadingIndicator(),
                );
              } else if (state is LoginFailed) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context)
                    .showSnackBar(snackBar(state.message, AlertType.error));

                Navigator.of(context, rootNavigator: true).pop();
              } else if (state is LoginSuccess) {
                context.goNamed('home');
              }
            },
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height - 50,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            margin: const EdgeInsets.only(top: 95),
                            child: Image.asset(
                              'assets/image/sisinfo-blue.png',
                              width: 160,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 64),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Form(
                                  key: formKey,
                                  child: formType == FormType.login
                                      ? Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomTextFormField(
                                              hintText: 'Email',
                                              controller: _emailController,
                                              isObscure: false,
                                              prefixIcon: Boxicons.bx_envelope,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Email Cannot be Empty!";
                                                } else if (!value.contains(
                                                    "@webmail.uad.ac.id")) {
                                                  return "Please Use Email Provided by Campus!";
                                                }
                                                return null;
                                              },
                                            ),
                                            const SizedBox(height: 8),
                                            CustomTextFormField(
                                              hintText: 'Password',
                                              controller: _passwordController,
                                              isObscure: true,
                                              prefixIcon: Boxicons.bx_lock,
                                              suffixIcon: Boxicons.bx_show,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Password Cannot be Empty!";
                                                }
                                                return null;
                                              },
                                            ),
                                          ],
                                        )
                                      : Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomTextFormField(
                                              controller: _emailController,
                                              hintText: 'Email',
                                              isObscure: false,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Email Cannot be Empty!";
                                                } else if (!value.contains(
                                                    "@webmail.uad.ac.id")) {
                                                  return "Please Use Email Provided by Campus!";
                                                }
                                                return null;
                                              },
                                              prefixIcon: Boxicons.bx_envelope,
                                            ),
                                            const SizedBox(height: 8),
                                            CustomTextFormField(
                                              hintText: 'Password',
                                              controller: _passwordController,
                                              isObscure: true,
                                              prefixIcon: Boxicons.bx_lock,
                                              suffixIcon: Boxicons.bx_show,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Password Cannot be Empty!";
                                                } else if (value.length < 8) {
                                                  return "Password Must be At Least 8 Characters!";
                                                }
                                                return null;
                                              },
                                              onChanged: (value) =>
                                                  setState(() {
                                                password = value;
                                              }),
                                            ),
                                            const SizedBox(height: 8),
                                            CustomTextFormField(
                                              hintText: 'Repeat Password',
                                              controller:
                                                  _repeatPasswordController,
                                              isObscure: true,
                                              prefixIcon: Boxicons.bx_lock,
                                              suffixIcon: Boxicons.bx_show,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Password Cannot be Empty!";
                                                } else if (value != password) {
                                                  return "Password Combination is not Match!";
                                                }
                                                return null;
                                              },
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                              if (formType == FormType.login)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          final email =
                                              _emailController.text.trim();

                                          context.pushNamed(
                                              'send-reset-password-otp',
                                              extra:
                                                  SendResetPasswordOtpPageExtra(
                                                      email: email));
                                        },
                                        child: const Text(
                                          "Lupa Password?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff1d1d1d),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              else
                                const SizedBox(),
                              SizedBox(
                                height: formType == FormType.login ? 110 : 71,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: CustomLargeButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      final email =
                                          _emailController.text.trim();
                                      final password =
                                          _passwordController.text.trim();
                                      final repeatPassword =
                                          _repeatPasswordController.text.trim();

                                      if (formType == FormType.register) {
                                        final UserInfoPageExtra
                                            userInfoPageExtra =
                                            UserInfoPageExtra(
                                          email: email,
                                          password: password,
                                          repeatPassword: repeatPassword,
                                        );

                                        context.pushNamed(
                                          'user-info',
                                          extra: userInfoPageExtra,
                                        );
                                      } else {
                                        final LoginModel loginModel =
                                            LoginModel(
                                          email: email,
                                          password: password,
                                        );

                                        context.read<LoginBloc>().add(
                                            LoginButtonTapped(
                                                loginModel: loginModel));
                                      }
                                    }
                                  },
                                  text: formType == FormType.register
                                      ? "Next"
                                      : "Login",
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          formType == FormType.register
                              ? "Sudah punya akun?"
                              : "Belum punya akun?",
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              formKey.currentState!.reset();
                              if (formType == FormType.login) {
                                formType = FormType.register;
                              } else {
                                formType = FormType.login;
                              }
                            });
                            _emailController.clear();
                            _passwordController.clear();
                            _repeatPasswordController.clear();
                          },
                          child: Text(
                            formType == FormType.register
                                ? "Masuk"
                                : "Buat Akun",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
