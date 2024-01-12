import 'package:flutter/material.dart';

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
          title: Text('Counter'),
          backgroundColor: Colors.blue,
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          const Text(
            '0',
            style: TextStyle(fontSize: 20),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
