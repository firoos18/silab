import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/data/models/register_model.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  FormType formType = FormType.register;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    final password = _passwordController.text.trim();
                    final repeatPassword =
                        _repeatPasswordController.text.trim();
                    final fullname = _fullnameController.text.trim();
                    final nim = _nimController.text.trim();

                    if (formType == FormType.register) {
                      final RegisterModel registerModel = RegisterModel(
                        email: email,
                        password: password,
                        repeatPassword: repeatPassword,
                        fullname: fullname,
                        nim: nim,
                      );

                      context.read<RegisterBloc>().add(
                          RegisterButtonTapped(registerData: registerModel));
                    } else {
                      final LoginModel loginModel = LoginModel(
                        email: email,
                        password: password,
                      );

                      context
                          .read<LoginBloc>()
                          .add(LoginButtonTapped(loginModel: loginModel));
                    }
                  }
                },
                child: Text(
                  formType == FormType.register ? "Register" : "Login",
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                      formType == FormType.register ? "Masuk" : "Buat Akun",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
