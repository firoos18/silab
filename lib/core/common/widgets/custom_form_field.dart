import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final bool isObscure;
  final String? Function(String?)? validator;
  final String? suffixIcon;
  final TextEditingController controller;

  const CustomFormField({
    super.key,
    required this.hintText,
    required this.textInputAction,
    required this.textInputType,
    required this.isObscure,
    required this.validator,
    required this.suffixIcon,
    required this.controller,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();

    setState(() {
      isObscure = widget.isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: const Color(0xffFFBF01),
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      obscureText: isObscure,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: const Color(0xff1d1d1d).withValues(alpha: 0.3),
        ),
        prefixIcon: widget.suffixIcon != null
            ? Image.asset(
                widget.suffixIcon!,
                scale: 2,
              )
            : null,
        suffixIcon: widget.isObscure
            ? isObscure
                ? GestureDetector(
                    onTap: () => setState(() {
                      isObscure = !isObscure;
                    }),
                    child: Image.asset(
                      'assets/image/show-password.png',
                      scale: 2,
                    ),
                  )
                : GestureDetector(
                    onTap: () => setState(() {
                      isObscure = !isObscure;
                    }),
                    child: Image.asset(
                      'assets/image/hide-password.png',
                      scale: 2,
                    ),
                  )
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffBFD9EF),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffBFD9EF),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff3272CA),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
