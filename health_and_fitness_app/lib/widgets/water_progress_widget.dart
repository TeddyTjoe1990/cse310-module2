import 'package:flutter/material.dart';

// A simple widget to show water intake progress
class WaterProgressWidget extends StatelessWidget {
  final int glasses; // Number of glasses consumed

  WaterProgressWidget({required this.glasses});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text showing how many glasses have been consumed
        Text('Water Intake: $glasses / 8 glasses', style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        // Linear progress bar representing current water intake
        LinearProgressIndicator(
          value: glasses / 8, // Calculate progress (max is 8 glasses)
          backgroundColor: Colors.grey[300], // Background color of the bar
          color: Colors.blue, // Fill color of the progress
          minHeight: 20, // Height of the bar
        ),
      ],
    );
  }
}
