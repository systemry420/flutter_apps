import 'package:flutter/material.dart';
import 'CustomCard.dart';

const double bottomButtonHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

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
    return Column(
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
        Container(
          color: Color(0xFFEB1555),
          height: bottomButtonHeight,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text(
            'Calculate',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
