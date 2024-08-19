import 'package:flutter/material.dart';

enum AlertType { info, success, error }

SnackBar snackBar({
  String? message,
  AlertType? type,
  String? actionLabel,
  void Function()? action,
}) {
  late Color backgroundColor;

  if (type == AlertType.error) {
    backgroundColor = const Color(0xffFF0000);
  } else if (type == AlertType.info) {
    backgroundColor = const Color(0xffFAC730);
  } else {
    backgroundColor = const Color(0xff27A149);
  }

  return SnackBar(
    duration: const Duration(seconds: 5),
    content: Text(
      message!,
      style: const TextStyle(
        color: Color(0xfff4f4f9),
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
    action: (action != null && actionLabel != null)
        ? SnackBarAction(
            label: actionLabel,
            onPressed: action,
            textColor: Colors.white,
          )
        : null,
  );
}
