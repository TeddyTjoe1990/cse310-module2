import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health & Fitness')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Your Fitness App!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
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
    );
  }
}
