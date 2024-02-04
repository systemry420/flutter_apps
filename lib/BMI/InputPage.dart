import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Card()),
              Expanded(child: Card()),
            ],
          ),
        ),
        Expanded(child: Card()),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Card()),
              Expanded(child: Card()),
            ],
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Card'),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
