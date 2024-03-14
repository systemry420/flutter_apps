import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTodo extends StatefulWidget {
  const MainTodo({super.key});

  @override
  State<MainTodo> createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  late TextEditingController _controller;
  List<String> entries = ['1', '2', '3'];

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        backgroundColor: const Color(0xFF0A0E21),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _controller,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    String inputText = _controller.text;
                    entries.add(inputText);
                    _controller.text = '';
                  });
                },
                child: Text('Add note'),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      height: 50,
                      child: Text(
                        'Entry ${entries[index]}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
