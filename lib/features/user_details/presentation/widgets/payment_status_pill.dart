import 'package:flutter/material.dart';

class PaymentStatusPill extends StatelessWidget {
  final bool paymentStatus;

  const PaymentStatusPill({super.key, required this.paymentStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: paymentStatus ? Colors.greenAccent : Colors.redAccent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        paymentStatus ? "sudah bayar" : "belum bayar",
      ),
    );
  }
}
