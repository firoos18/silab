import 'package:flutter/material.dart';

enum AlertType { info, success, error }

SnackBar snackBar(
  String? message,
  AlertType type,
) {
  late Color backgroundColor;

  if (type == AlertType.error) {
    backgroundColor = Colors.redAccent;
  } else if (type == AlertType.info) {
    backgroundColor = Colors.blueAccent;
  } else {
    backgroundColor = Colors.greenAccent;
  }

  return SnackBar(
    content: Text(message!),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
  );
}
