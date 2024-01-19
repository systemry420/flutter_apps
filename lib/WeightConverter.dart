import 'package:flutter/material.dart';

class WeightConverter extends StatefulWidget {
  const WeightConverter({super.key});

  @override
  State<WeightConverter> createState() => _WeightConverterState();
}

class _WeightConverterState extends State<WeightConverter> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Weight Converter', style: TextStyle(fontSize: 40),),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  if(value == '') {
                    number = 0;
                  } else {
                    number = int.parse(value);
                  }
                });
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Text('Gram'),
                        Text('${number / 0.0022046}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.lightGreen,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Text('Kilogram'),
                        Text('${number / 2.2046}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.lightBlue,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Text('Ounce'),
                        Text('${number * 16}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
