import 'package:flutter/material.dart';
import 'package:flutter_apps/BMI/CustomCard.dart';
import 'package:flutter_apps/constants.dart';

class ResultPage extends StatelessWidget {
  final bmi, title;
  final color;

  ResultPage({this.title, this.bmi, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          Text('Your Result', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, style: TextStyle(color: color, fontSize: 50, fontWeight: FontWeight.bold),),
                  Text(bmi, style: const TextStyle(fontSize: 100, fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              color: Color(0xFFEB1555),
              height: bottomButtonHeight,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Re-Calculate',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
