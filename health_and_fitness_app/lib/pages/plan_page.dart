import 'package:flutter/material.dart';
import '../widgets/health_plan_card.dart'; // Custom widget to display a health plan card

// StatelessWidget because the plan list doesn't change dynamically
class PlanPage extends StatelessWidget {
  // Static list of daily health plans with title and description
  final List<Map<String, String>> plans = [
    {'title': 'Morning Jog', 'description': 'Jog for 20 minutes at 6 AM'},
    {'title': 'Healthy Breakfast', 'description': 'Oats, fruits, and milk'},
    {'title': 'Drink Water', 'description': 'Drink 2L water today'},
    {'title': 'Workout', 'description': '30 mins full-body workout'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Today\'s Plan')), // Top app bar with the title
      body: ListView.builder(
        itemCount: plans.length, // Number of plans to display
        itemBuilder: (context, index) {
          // For each item in the plan, use a reusable card widget
          return HealthPlanCard(
            title: plans[index]['title']!, // Title of the health activity
            description: plans[index]['description']!, // Description of the activity
          );
        },
      ),
    );
  }
}
