import 'dart:async';

import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTimeAtFuture = DateTime(2024, 12, 31);
    DateTime dateTimeNow = DateTime.now();

    var differenceInSeconds = dateTimeAtFuture.difference(dateTimeNow).inSeconds;
    var seconds = differenceInSeconds;
    var days = seconds ~/ 86400;
    seconds %= 86400;
    var hours = seconds ~/ 3600;
    seconds %= 3600;
    var minutes = seconds ~/ 60;
    seconds %= 60;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        differenceInSeconds = dateTimeAtFuture.difference(dateTimeNow).inSeconds;
        days = seconds ~/ 86400;
        seconds %= 86400;
        hours = seconds ~/ 3600;
        seconds %= 3600;
        minutes = seconds ~/ 60;
        seconds %= 60;
      });
    });
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 120.0),
            child: Column(
              children: [
                Text('Countdown', style: TextStyle(fontSize: 40),),
                Icon(Icons.alarm, size: 100, color: Colors.purple,),
              ],
            )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SafeArea(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('${ days < 10 ? "0$days" : days}', style: TextStyle(fontSize: 50),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('${ hours < 10 ? "0$hours" : hours }', style: TextStyle(fontSize: 50),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('${ minutes }', style: TextStyle(fontSize: 50),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('$seconds', style: TextStyle(fontSize: 50),),
                          ],
                        ),
                      ],
                    ),
                ),
              ),
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
