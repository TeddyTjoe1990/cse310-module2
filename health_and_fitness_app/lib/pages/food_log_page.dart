import 'package:flutter/material.dart';

// This page shows a static list of food logs
class FoodLogPage extends StatelessWidget {
  // Sample food log entries; you can later replace this with dynamic data from user input or database
  final List<String> foodLogs = [
    "Breakfast: Banana + Oatmeal",
    "Lunch: Grilled Chicken + Veggies",
    "Snack: Yogurt",
    "Dinner: Fish + Rice",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food Log')), // App bar with page title
      body: ListView.builder(
        itemCount: foodLogs.length, // Total number of food log entries
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.restaurant_menu), // Icon to visually indicate food items
            title: Text(foodLogs[index]), // Display each food log entry
          );
        },
      ),
    );
  }
}
