import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final bool isObscure;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.isObscure,
    required this.prefixIcon,
    this.onChanged,
    this.suffixIcon,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscure;

  @override
  void initState() {
    setState(() {
      _isObscure = widget.isObscure;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscure,
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      autofocus: false,
      cursorColor: const Color(0xffFFBF01),
      decoration: InputDecoration(
        labelText: widget.hintText,
        labelStyle: TextStyle(
          color: const Color(0xff1d1d1d).withOpacity(0.7),
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: false,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: Icon(
                  _isObscure ? Boxicons.bx_show : Boxicons.bx_hide,
                  color: const Color(0xff1d1d1d),
                ),
              )
            : null,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: const Color(0xff1d1d1d),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: const Color(0xff3272CA).withOpacity(1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: const Color(0xff3272CA).withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: const Color(0xff3272CA).withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
