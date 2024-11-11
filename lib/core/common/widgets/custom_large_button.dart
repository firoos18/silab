import 'package:flutter/material.dart';

class CustomLargeButton extends StatelessWidget {
  final void Function()? action;
  final Widget label;

  const CustomLargeButton({
    super.key,
    required this.action,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff3272CA),
        foregroundColor: const Color(0xffF4F4F9),
        fixedSize: const Size(double.maxFinite, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: label,
    );
  }
}
