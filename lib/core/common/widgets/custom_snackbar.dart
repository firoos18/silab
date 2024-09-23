import 'package:flutter/material.dart';

enum AlertType { info, success, error }

SnackBar snackBar({
  String? message,
  AlertType? type,
  String? actionLabel,
  void Function()? action,
}) {
  late Color backgroundColor;
  late Color textColor;

  if (type == AlertType.error) {
    textColor = const Color(0xffFE2f60);
    backgroundColor = const Color(0xffFfD9D9);
  } else if (type == AlertType.info) {
    backgroundColor = const Color(0xffFAC730);
  } else {
    textColor = const Color(0xff50cd89);
    backgroundColor = const Color(0xffE8fff3);
  }

  return SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(
      message!,
      style: TextStyle(
        color: textColor,
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
