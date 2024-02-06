import 'package:flutter/material.dart';
import 'CustomCard.dart';
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
              Expanded(child: CustomCard(bgColor: Color(0xFF1D1E33), icon: Icons.male, title: 'Male', content: null,)),
              Expanded(child: CustomCard(bgColor: Color(0xFF1D1E33), icon: Icons.female, title: 'Female',)),
            ],
          ),
        ),
        Expanded(child: CustomCard(bgColor: Color(0xFF1D1E33), title: 'Height (cm)', content: '170',)),
        Expanded(
          child: Row(
            children: [
              Expanded(child: CustomCard(bgColor: Color(0xFF1D1E33), title: 'Weight (KG)', content: '60',)),
              Expanded(child: CustomCard(bgColor: Color(0xFF1D1E33), title: 'Age', content: '30',)),
            ],
          ),
        ),
        Container(
          color: Color(0xFFEB1555),
          height: bottomButtonHeight,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text('Calculate',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
