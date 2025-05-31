import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // For drawing the line chart

// Page to show weight progress over time
class WeightChartPage extends StatelessWidget {
  // Sample data points for the line chart (Day, Weight in kg)
  final List<FlSpot> dataPoints = [
    FlSpot(1, 72),
    FlSpot(2, 71),
    FlSpot(3, 70.5),
    FlSpot(4, 70),
    FlSpot(5, 69.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weight Progress')), // App bar title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the chart
        child: LineChart(LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: dataPoints, // Plot the weight data
              isCurved: true,   // Make the line smooth
              color: Colors.blue,  // Line color
              barWidth: 3,    // Thickness of the line
            )
          ],
        )),
      ),
    );
  }
}
