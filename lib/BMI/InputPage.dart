import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_apps/BMI/ResultPage.dart';
import 'CustomCard.dart';
import 'package:flutter_apps/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 170;
  int weight = 70;
  int age = 30;

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      selectedGender = Gender.male;
    } else {
      selectedGender = Gender.female;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: CustomCard(
                    bgColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    icon: Icons.male,
                    title: 'Male',
                    content: null,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: CustomCard(
                    bgColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    icon: Icons.female,
                    title: 'Female',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: activeCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text('Height (cm)', style: const TextStyle(fontSize: 15),),
                    const SizedBox(height: 10,),
                    Text(height.toString(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
                    Slider(value: 100, min: 100, max: 220, onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },)
                  ],
                ),
              ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomCard(
                  bgColor: activeCardColor,
                  title: 'Weight (KG)',
                  content: weight.toString(),
                  childrenContent: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        icon: Icons.remove,
                        onClick: () {
                          setState(() {
                            weight--;
                          });
                        }
                      ),
                      CustomIconButton(
                        icon: Icons.add,
                        onClick: () {
                          setState(() {
                            weight++;
                          });
                        },
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CustomCard(
                  bgColor: activeCardColor,
                  title: 'Age',
                  content: age.toString(),
                  childrenContent: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        icon: Icons.remove,
                        onClick: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      CustomIconButton(
                        icon: Icons.add,
                        onClick: () {
                          setState(() {
                            age++;
                          });
                        },
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              color: Color(0xFFEB1555),
              height: bottomButtonHeight,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                bmi: calc.getBMI(),
                title: calc.getResult(),
                color: calc.getColor(),
              ),));
            },
          )
        ],
      ),
    );
  }
}

class Calculator {
  final height, weight;

  double _bmi = 0;
  
  Calculator({this.height, this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return _bmi >= 25 ? 'Overweight' : _bmi > 18.5 && _bmi < 25 ? 'Normal' : 'Underweight';
  }

  Color getColor() {
    return _bmi >= 25 ? Colors.red :
      _bmi > 18.5 && _bmi < 25 ? Colors.green
          : Colors.deepOrange;
  }
}