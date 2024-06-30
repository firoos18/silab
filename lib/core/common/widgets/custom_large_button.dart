import 'package:flutter/material.dart';

class CustomLargeButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const CustomLargeButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          backgroundColor: const Color(0xff3272CA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xfff4f4f9),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
