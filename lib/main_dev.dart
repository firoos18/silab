import 'package:flutter/material.dart';
import 'package:silab/app_confid.dart';

void main() {
  runApp(const MainApp());

  AppConfig.create(
    appName: "SILAB Dev",
    baseUrl: "https://silab-dev.vercel.app",
    flavor: Flavor.dev,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
