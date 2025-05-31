import 'package:flutter/material.dart';

class FoodLogPage extends StatelessWidget {
  final List<String> foodLogs = [
    "Breakfast: Banana + Oatmeal",
    "Lunch: Grilled Chicken + Veggies",
    "Snack: Yogurt",
    "Dinner: Fish + Rice",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food Log')),
      body: ListView.builder(
        itemCount: foodLogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text(foodLogs[index]),
          );
        },
      ),
    );
  }
}
