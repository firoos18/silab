import 'package:flutter/material.dart';

enum FormType { login, register }

class AuthenticationForm extends StatefulWidget {
  final FormType formType;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? repeatPasswordController;
  final TextEditingController? fullnameController;
  final TextEditingController? nimController;
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
  });

  @override
  State<AuthenticationForm> createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  String? password = "";
  bool showPassword = false;
  bool showRepeatPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.formType == FormType.register
            ? [
                TextFormField(
                  controller: widget.emailController,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Cannot be Empty!";
                    } else if (!value.contains("@webmail.uad.ac.id")) {
                      return "Please Use Email Provided by Campus!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: widget.passwordController,
                  autofocus: false,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: !showPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password Cannot be Empty!";
                    } else if (value.length < 8) {
                      return "Password Must be At Least 8 Characters!";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: widget.repeatPasswordController,
                  autofocus: false,
                  obscureText: !showRepeatPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showRepeatPassword = !showRepeatPassword;
                        });
                      },
                      icon: !showRepeatPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Repeat Password",
                  ),
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
                TextFormField(
                  controller: widget.fullnameController,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Fullname",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Fullname Cannot be Empty!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: widget.nimController,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "NIM",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "NIM Cannot be Empty";
                    } else if (value.length < 10) {
                      return "Please Provide a Valid NIM";
                    }
                    return null;
                  },
                ),
              ]
            : [
                TextFormField(
                  controller: widget.emailController,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Cannot be Empty!";
                    } else if (!value.contains("@webmail.uad.ac.id")) {
                      return "Please Use Email Provided by Campus!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: widget.passwordController,
                  autofocus: false,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: !showPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Password",
                  ),
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
