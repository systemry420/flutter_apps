import 'package:flutter/material.dart';

import 'BMI/InputPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Apps'),
          backgroundColor: const Color(0xFF0A0E21),
          elevation: 1,
        ),
        body: const InputPage(),
      ),
    );
  }
}
