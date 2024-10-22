import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/core/common/widgets/custom_form_field.dart';
import 'package:silab/core/common/widgets/custom_large_button.dart';
import 'package:silab/core/common/widgets/custom_snackbar.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/presentation/bloc/authentication_bloc.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nimController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is AuthenticationSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              snackBar(message: 'Sign In Success', type: AlertType.success),
            );

            context.goNamed('home');
          } else if (state is AuthenticationFailed) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              snackBar(message: state.message, type: AlertType.error),
            );
          }
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/image/sisinfo-blue.png',
                    scale: 3,
                  ),
                  const SizedBox(height: 64),
                  CustomFormField(
                    controller: _nimController,
                    hintText: 'NIM',
                    suffixIcon: 'assets/image/email.png',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'NIM Anda Belum Diisi!';
                      } else if (value.length < 10) {
                        return 'Masukkan NIM yang Valid!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomFormField(
                    controller: _passwordController,
                    hintText: 'Password',
                    suffixIcon: 'assets/image/password.png',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    isObscure: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Anda Belum Diisi!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                      return CustomLargeButton(
                        action: state is! AuthenticationLoading
                            ? () {
                                if (formKey.currentState!.validate()) {
                                  final String nim = _nimController.text.trim();
                                  final String password =
                                      _passwordController.text.trim();
                                  final LoginModel loginData =
                                      LoginModel(nim: nim, password: password);

                                  context
                                      .read<AuthenticationBloc>()
                                      .add(UserLogin(loginData: loginData));
                                }
                              }
                            : null,
                        label: state is! AuthenticationLoading
                            ? const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                      );
                    },
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
