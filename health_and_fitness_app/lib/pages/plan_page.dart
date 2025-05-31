import 'package:flutter/material.dart';
import '../widgets/health_plan_card.dart';

class PlanPage extends StatelessWidget {
  final List<Map<String, String>> plans = [
    {'title': 'Morning Jog', 'description': 'Jog for 20 minutes at 6 AM'},
    {'title': 'Healthy Breakfast', 'description': 'Oats, fruits, and milk'},
    {'title': 'Drink Water', 'description': 'Drink 2L water today'},
    {'title': 'Workout', 'description': '30 mins full-body workout'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Today\'s Plan')),
      body: ListView.builder(
        itemCount: plans.length,
        itemBuilder: (context, index) {
          return HealthPlanCard(
            title: plans[index]['title']!,
            description: plans[index]['description']!,
          );
        },
      ),
    );
  }
}
