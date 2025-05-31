import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/plan_page.dart';
import 'pages/weight_chart_page.dart';
import 'pages/food_log_page.dart';
import 'pages/water_tracker_page.dart';

void main() => runApp(HealthFitnessApp());

class HealthFitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health & Fitness',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginPage(), // ✅ ini sudah benar
      routes: {
        '/dashboard': (context) => DashboardPage(),
        '/plan': (context) => PlanPage(),
        '/weight': (context) => WeightChartPage(),
        '/food': (context) => FoodLogPage(),
        '/water': (context) => WaterTrackerPage(),
      },
    );
  }
}
