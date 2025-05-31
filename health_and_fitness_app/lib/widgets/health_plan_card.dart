import 'package:flutter/material.dart';

class HealthPlanCard extends StatelessWidget {
  final String title;
  final String description;

  HealthPlanCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Icon(Icons.check_circle_outline, color: Colors.green),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}
