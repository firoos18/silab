import 'package:flutter/material.dart';

enum AlertType { info, success, error }

SnackBar snackBar(
  String? message,
  AlertType type,
) {
  late Color backgroundColor;

  if (type == AlertType.error) {
    backgroundColor = const Color(0xffFF0000);
  } else if (type == AlertType.info) {
    backgroundColor = const Color(0xffFAC730);
  } else {
    backgroundColor = const Color(0xff27A149);
  }

  return SnackBar(
    content: Text(message!),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
  );
}
