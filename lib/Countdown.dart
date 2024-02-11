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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countdown'),
        backgroundColor: const Color(0xFF0A0E21),
        elevation: 1,
      ),
      body: Center(
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
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: Text('${ days < 10 ? "0$days" : days}', style: const TextStyle(fontSize: 45),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: Text('${ hours < 10 ? "0$hours" : hours }', style: const TextStyle(fontSize: 45),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: Text('${ minutes < 10 ? "0$minutes" : minutes }', style: const TextStyle(fontSize: 45),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: Text('${ seconds < 10 ? "0$seconds": seconds }', style: const TextStyle(fontSize: 45),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: const Text('D', style: TextStyle(fontSize: 70),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                  child: const Text('H', style: TextStyle(fontSize: 70),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: const Text('M', style: TextStyle(fontSize: 70),),
                ),
                Container(
                    width: 90,
                  alignment: Alignment.center,
                    child: const Text('S', style: TextStyle(fontSize: 70),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
