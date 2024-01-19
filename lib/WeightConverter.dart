import 'package:flutter/material.dart';

class WeightConverter extends StatefulWidget {
  const WeightConverter({super.key});

  @override
  State<WeightConverter> createState() => _WeightConverterState();
}

class _WeightConverterState extends State<WeightConverter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        children: [
          Text('Weight Converter')
        ],
      ),
    );
  }
}
