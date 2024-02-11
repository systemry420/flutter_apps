import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apps'),
        backgroundColor: const Color(0xFF0A0E21),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: const Icon(Icons.arrow_circle_up),
                  color: Colors.green,
                  iconSize: 100,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: const Icon(Icons.arrow_circle_down),
                  color: Colors.red,
                  iconSize: 100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}