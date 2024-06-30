import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:silab/core/common/widgets/custom_textformfield.dart';

enum FormType { login, register }

class AuthenticationForm extends StatefulWidget {
  final FormType formType;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? repeatPasswordController;
  final TextEditingController? fullnameController;
  final TextEditingController? nimController;
  final TextEditingController? waController;
  final GlobalKey<FormState> formKey;

  const AuthenticationForm({
    super.key,
    required this.formType,
    required this.formKey,
    this.emailController,
    this.fullnameController,
    this.nimController,
    this.passwordController,
    this.repeatPasswordController,
    this.waController,
  });

  @override
  State<AuthenticationForm> createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  String? password = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.formType == FormType.register
            ? [
                CustomTextFormField(
                  controller: widget.emailController!,
                  hintText: 'Email',
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Cannot be Empty!";
                    } else if (!value.contains("@webmail.uad.ac.id")) {
                      return "Please Use Email Provided by Campus!";
                    }
                    return null;
                  },
                  prefixIcon: Boxicons.bx_envelope,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'Password',
                  controller: widget.passwordController!,
                  isObscure: true,
                  prefixIcon: Boxicons.bx_lock,
                  suffixIcon: Boxicons.bx_show,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password Cannot be Empty!";
                    } else if (value.length < 8) {
                      return "Password Must be At Least 8 Characters!";
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    password = value;
                  }),
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'Repeat Password',
                  controller: widget.repeatPasswordController!,
                  isObscure: true,
                  prefixIcon: Boxicons.bx_lock,
                  suffixIcon: Boxicons.bx_show,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Cannot be Empty!";
                    } else if (value != password) {
                      return "Password Combination is not Match!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'Fullname',
                  controller: widget.fullnameController!,
                  isObscure: false,
                  prefixIcon: Boxicons.bx_user,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Fullname Cannot be Empty!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'NIM',
                  controller: widget.nimController!,
                  isObscure: false,
                  prefixIcon: Boxicons.bx_id_card,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "NIM Cannot be Empty!";
                    } else if (value.length < 10) {
                      return "Please Provide a Valid NIM";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'WhatsApp Number',
                  controller: widget.waController!,
                  isObscure: false,
                  prefixIcon: Boxicons.bx_phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "NIM Cannot be Empty!";
                    }
                    return null;
                  },
                ),
              ]
            : [
                CustomTextFormField(
                  controller: widget.emailController!,
                  hintText: 'Email',
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Cannot be Empty!";
                    } else if (!value.contains("@webmail.uad.ac.id")) {
                      return "Please Use Email Provided by Campus!";
                    }
                    return null;
                  },
                  prefixIcon: Boxicons.bx_envelope,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  hintText: 'Password',
                  controller: widget.passwordController!,
                  isObscure: true,
                  prefixIcon: Boxicons.bx_lock,
                  suffixIcon: Boxicons.bx_show,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password Cannot be Empty!";
                    }
                    return null;
                  },
                ),
              ],
      ),
    );
  }
}
