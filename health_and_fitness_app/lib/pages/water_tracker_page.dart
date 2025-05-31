import 'package:flutter/material.dart';
import '../widgets/water_progress_widget.dart'; // Custom widget to visualize progress

// Stateful widget because the number of glasses can change
class WaterTrackerPage extends StatefulWidget {
  @override
  _WaterTrackerPageState createState() => _WaterTrackerPageState();
}

class _WaterTrackerPageState extends State<WaterTrackerPage> {
  int glasses = 0;

  // Function to add a glass (max 8)
  void addGlass() {
    if (glasses < 8) {
      setState(() {
        glasses++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Water Tracker')), // App bar with title
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        children: [
          WaterProgressWidget(glasses: glasses), // Show progress visually
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: addGlass, // Increment water intake
            child: Text('Add a Glass of Water'),
          ),
        ],
      ),
    );
  }
}
