import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_loading_indicator.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/pages/send_reset_password_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page_extra.dart';
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
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();

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
    _fullnameController.dispose();
    _nimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: MultiBlocListener(
              listeners: [
                BlocListener<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterLoading) {
                      showDialog(
                        context: context,
                        useRootNavigator: false,
                        builder: (context) => const CustomLoadingIndicator(),
                      );
                    } else if (state is RegisterFailed) {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                          snackBar(state.message, AlertType.error));

                      Navigator.of(context, rootNavigator: true).pop();
                    } else if (state is RegisterSuccess) {
                      context.goNamed(
                        'verify-otp',
                        extra: VerifyOtpPageExtra(
                          email: state.registerData!.email,
                          userId: state.registerData!.userId,
                        ),
                      );
                    }
                  },
                ),
                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginLoading) {
                      showDialog(
                        context: context,
                        useRootNavigator: false,
                        builder: (context) => const CustomLoadingIndicator(),
                      );
                    } else if (state is LoginFailed) {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                          snackBar(state.message, AlertType.error));

                      Navigator.of(context, rootNavigator: true).pop();
                    } else if (state is LoginSuccess) {
                      context.goNamed('home');
                    }
                  },
                ),
              ],
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height - 80,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            minRadius: 56,
                            maxRadius: 64,
                            backgroundColor: Colors.white70,
                            child: Image.asset(
                              'assets/image/sisinfo-blue.png',
                              width: 64,
                              height: 64,
                            ),
                          ),
                          const SizedBox(height: 24),
                          AuthenticationForm(
                            formKey: formKey,
                            formType: formType,
                            emailController: _emailController,
                            passwordController: _passwordController,
                            repeatPasswordController: _repeatPasswordController,
                            fullnameController: _fullnameController,
                            nimController: _nimController,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                final email = _emailController.text.trim();
                                final password =
                                    _passwordController.text.trim();
                                final repeatPassword =
                                    _repeatPasswordController.text.trim();
                                final fullname =
                                    _fullnameController.text.trim();
                                final nim = _nimController.text.trim();

                                if (formType == FormType.register) {
                                  final RegisterModel registerModel =
                                      RegisterModel(
                                    email: email,
                                    password: password,
                                    repeatPassword: repeatPassword,
                                    fullname: fullname,
                                    nim: nim,
                                  );

                                  context.read<RegisterBloc>().add(
                                      RegisterButtonTapped(
                                          registerData: registerModel));
                                } else {
                                  final LoginModel loginModel = LoginModel(
                                    email: email,
                                    password: password,
                                  );

                                  context.read<LoginBloc>().add(
                                      LoginButtonTapped(
                                          loginModel: loginModel));
                                }
                              }
                            },
                            child: Text(
                              formType == FormType.register
                                  ? "Register"
                                  : "Login",
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  final email = _emailController.text.trim();

                                  context.pushNamed('send-reset-password-otp',
                                      extra: SendResetPasswordOtpPageExtra(
                                          email: email));
                                },
                                child: const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            formType == FormType.register
                                ? "Sudah punya akun?"
                                : "Belum punya akun?",
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (formType == FormType.login) {
                                  formType = FormType.register;
                                } else {
                                  formType = FormType.login;
                                }
                              });
                            },
                            child: Text(
                              formType == FormType.register
                                  ? "Masuk"
                                  : "Buat Akun",
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
      ),
    );
  }
}
