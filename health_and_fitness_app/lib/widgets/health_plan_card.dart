import 'package:flutter/material.dart';

// A reusable card widget for displaying a single health plan task
class HealthPlanCard extends StatelessWidget {
  final String title; // Title of the task
  final String description; // Short description of the task

  HealthPlanCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Outer spacing
      child: ListTile( 
        leading: Icon(Icons.check_circle_outline, color: Colors.green), // Icon on the left
        title: Text(title), // Task title
        subtitle: Text(description), // Task description
      ),
    );
  }
}
