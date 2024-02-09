import 'package:flutter/material.dart';
import 'CustomCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomButtonHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;

   void updateColor(Gender gender) {
     if(gender == Gender.male) {
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
                  bgColor: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
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
                  bgColor: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                  icon: Icons.female,
                  title: 'Female',
                ),
              )),
            ],
          ),
        ),
        Expanded(
            child: CustomCard(
          bgColor: activeCardColor,
          title: 'Height (cm)',
          content: '170',
          childrenContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomIconButton(
                icon: Icons.remove,
              ),
              CustomIconButton(
                icon: Icons.add,
              )
            ],
          ),
        )),
        const Expanded(
          child: Row(
            children: [
              Expanded(
                  child: CustomCard(
                bgColor: activeCardColor,
                title: 'Weight (KG)',
                content: '60',
                childrenContent: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      icon: Icons.remove,
                    ),
                    CustomIconButton(
                      icon: Icons.add,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: CustomCard(
                bgColor: activeCardColor,
                title: 'Age',
                content: '30',
                childrenContent: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      icon: Icons.remove,
                    ),
                    CustomIconButton(
                      icon: Icons.add,
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
