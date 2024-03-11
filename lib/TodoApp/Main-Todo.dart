import 'package:flutter/material.dart';

class MainTodo extends StatefulWidget {
  const MainTodo({super.key});

  @override
  State<MainTodo> createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Todo App'),
    );
  }
}
