import 'package:flutter/material.dart';
import 'package:flutter_apps/BMI/ResultPage.dart';
import 'package:flutter_apps/Countdown.dart';
import 'package:flutter_apps/Counter.dart';
import 'package:flutter_apps/WeatherApp/weather_main.dart';
import 'package:flutter_apps/WeightConverter.dart';

import 'BMI/InputPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MainPage(),
        '/counter': (context) => Counter(),
        '/countdown': (context) => Countdown(),
        '/weightConverter': (context) => WeightConverter(),
        '/bmi': (context) => InputPage(),
        '/weather': (context) => WeatherMain(),
        '/bmi-result': (context) => ResultPage()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Apps'),
          backgroundColor: const Color(0xFF0A0E21),
          elevation: 1,
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/counter');
                    },
                    child: Text('Counter'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('Countdown'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/countdown');
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('Weight Converter'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/weightConverter');
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('BMI Calculator'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/bmi');
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Weather App'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/weather');
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
