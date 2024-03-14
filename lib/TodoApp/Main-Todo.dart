import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTodo extends StatefulWidget {
  const MainTodo({super.key});

  @override
  State<MainTodo> createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  List<String> entries = ['1', '2', '3'];

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
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
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
                      height: 50,
                      color: Colors.amber[int.parse(entries[index])],
                      child: Center(child: Text('Entry ${entries[index]}')),
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
