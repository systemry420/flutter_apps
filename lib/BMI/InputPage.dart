import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomButtonHeight = 80.0;

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
        Container(
          color: Color(0xFFEB1555),
          height: bottomButtonHeight,
          width: double.infinity,
        )
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
      child: Icon(Icons.male, size: 80,),
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(16),

      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
