import 'package:flutter/material.dart';

class WaterProgressWidget extends StatelessWidget {
  final int glasses;

  WaterProgressWidget({required this.glasses});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Water Intake: $glasses / 8 glasses', style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        LinearProgressIndicator(
          value: glasses / 8,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
          minHeight: 20,
        ),
      ],
    );
  }
}
