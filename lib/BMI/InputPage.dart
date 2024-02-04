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
              Expanded(child: Card(bgColor: Color(0xFF1D1E33),)),
              Expanded(child: Card(bgColor: Color(0xFF1D1E33))),
            ],
          ),
        ),
        Expanded(child: Card(bgColor: Color(0xFF1D1E33))),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Card(bgColor: Color(0xFF1D1E33))),
              Expanded(child: Card(bgColor: Color(0xFF1D1E33))),
            ],
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  Color bgColor;
  Card({required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Card'),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
