import 'package:flutter/material.dart';
import '../widgets/water_progress_widget.dart';

class WaterTrackerPage extends StatefulWidget {
  @override
  _WaterTrackerPageState createState() => _WaterTrackerPageState();
}

class _WaterTrackerPageState extends State<WaterTrackerPage> {
  int glasses = 0;

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
      appBar: AppBar(title: Text('Water Tracker')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WaterProgressWidget(glasses: glasses),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: addGlass,
            child: Text('Add a Glass of Water'),
          ),
        ],
      ),
    );
  }
}
