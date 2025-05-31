import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/login_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/plan_page.dart';
import 'pages/weight_chart_page.dart';
import 'pages/food_log_page.dart';
import 'pages/water_tracker_page.dart';
import 'theme_provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Health & Fitness',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
        ),
      ),
      themeMode: themeProvider.themeMode, // pakai mode dari provider
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => DashboardPage(),
        '/plan': (context) => PlanPage(),
        '/weight': (context) => WeightChartPage(),
        '/food': (context) => FoodLogPage(),
        '/water': (context) => WaterTrackerPage(),
      },
    );
  }
}
