import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/theme_provider.dart'; // Pastikan file ini ada dan sudah kamu buat

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(title: Text('Health & Fitness')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Your Fitness App!',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              SwitchListTile(
                title: Text('Dark Mode'),
                value: isDarkMode,
                onChanged: (value) {
                  themeProvider.toggleTheme(value);
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/plan');
                },
                child: Text('View Health Plan'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/weight'),
                child: Text('Weight Chart'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/food'),
                child: Text('Food Log'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/water'),
                child: Text('Water Tracker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
