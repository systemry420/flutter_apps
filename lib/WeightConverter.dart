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
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Weight Converter', style: TextStyle(fontSize: 40),),
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
                    alignment: Alignment.center,
                    color: Colors.redAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text('Gram', style: TextStyle(fontSize: 20),),
                          Text('${number / 0.0022046}', style: const TextStyle(fontSize: 20),),
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
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text('Kilogram', style: TextStyle(fontSize: 20),),
                          Text('${number / 2.2046}', style: const TextStyle(fontSize: 20),),
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
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text('Ounce', style: TextStyle(fontSize: 20),),
                          Text('${number * 16}', style: const TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      
        ],
      ),
    );
  }
}
