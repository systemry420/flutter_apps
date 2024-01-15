import 'package:flutter/material.dart';
import 'package:flutter_apps/Counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          backgroundColor: Colors.blue,
        ),
        body: Counter(),
      ),
    );
  }
}
