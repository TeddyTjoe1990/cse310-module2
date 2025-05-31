import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';  // Make sure this file exists and manages the app theme state

class DashboardPage extends StatelessWidget {
  final String username; // Passed from previous screen to personalize greeting

  const DashboardPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context); // Access the theme provider
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark; // Check current theme

    return Scaffold(
      appBar: AppBar(title: Text('Health & Fitness')), // Simple app bar title
      body: Center(
        child: SingleChildScrollView( // Enables scrolling if screen is small
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, $username!', // Personalized welcome message
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20), // Space between elements
              // Toggle for switching between dark and light mode
              SwitchListTile(
                title: Text('Dark Mode'),
                value: isDarkMode,
                onChanged: (value) {
                  themeProvider.toggleTheme(value); // Call method to change theme
                },
              ),
              SizedBox(height: 10),

              // Navigation buttons to other app features
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/plan');
                },
                child: Text('View Health Plan'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/weight'), // Navigate to Weight Chart
                child: Text('Weight Chart'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/food'), // Navigate to Food Log
                child: Text('Food Log'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/water'), // Navigate to Water Tracker
                child: Text('Water Tracker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
