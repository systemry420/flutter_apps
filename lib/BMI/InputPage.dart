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
              Expanded(child: Card(bgColor: Color(0xFF1D1E33), icon: Icons.male, title: 'Male', content: null,)),
              Expanded(child: Card(bgColor: Color(0xFF1D1E33), icon: Icons.female, title: 'Female',)),
            ],
          ),
        ),
        Expanded(child: Card(bgColor: Color(0xFF1D1E33), title: 'Height (cm)', content: '170',)),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Card(bgColor: Color(0xFF1D1E33), title: 'Weight (KG)', content: '60',)),
              Expanded(child: Card(bgColor: Color(0xFF1D1E33), title: 'Age', content: '30',)),
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

class Card extends StatelessWidget {
  final Color bgColor;
  final icon;
  final title;
  final content;
  Card({required this.bgColor, this.icon, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    Container container = new Container();

    if(content == null) {
      container = Container(
        padding: EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Icon(icon, size: 80,)
          ],
        ),
      );
    } else {
      container = Container(
        padding: EdgeInsets.only(top: 20),
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(16),

        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text(content, style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),),
          ],
        ),
      );
    }
    return container;
  }
}
