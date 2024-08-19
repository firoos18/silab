import 'package:flutter/material.dart';

class CustomSmallButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget label;

  const CustomSmallButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(130, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color(0xff3272CA),
          foregroundColor: const Color(0xfff4f4f9),
        ),
        child: label);
  }
}
