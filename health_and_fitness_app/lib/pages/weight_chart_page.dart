import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WeightChartPage extends StatelessWidget {
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
      appBar: AppBar(title: Text('Weight Progress')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: dataPoints,
              isCurved: true,
              color: Colors.blue, 
              barWidth: 3,
            )
          ],
        )),
      ),
    );
  }
}
