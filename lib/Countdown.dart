import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 300.0),
            child: Text('Countdown', style: TextStyle(fontSize: 40),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('00', style: TextStyle(fontSize: 40),),
              Text('00', style: TextStyle(fontSize: 40),),
              Text('00', style: TextStyle(fontSize: 40),),
              Text('00', style: TextStyle(fontSize: 40),),
              Text('00', style: TextStyle(fontSize: 40),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('M', style: TextStyle(fontSize: 50),),
              Text('D', style: TextStyle(fontSize: 50),),
              Text('H', style: TextStyle(fontSize: 50),),
              Text('M', style: TextStyle(fontSize: 50),),
              Text('S', style: TextStyle(fontSize: 50),),
            ],
          )
        ],
      ),
    );
  }
}
