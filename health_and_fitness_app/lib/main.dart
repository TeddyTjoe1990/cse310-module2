import 'package:flutter/material.dart';
import 'pages/dashboard_page.dart';
import 'pages/plan_page.dart';

void main() => runApp(HealthFitnessApp());

class HealthFitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health & Fitness',
      theme: ThemeData(primarySwatch: Colors.green),
      home: DashboardPage(),
      routes: {
        '/plan': (context) => PlanPage(),
      },
    );
  }
}
