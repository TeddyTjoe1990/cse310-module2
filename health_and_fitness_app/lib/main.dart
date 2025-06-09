import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/login_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/plan_page.dart';
import 'pages/weight_chart_page.dart';
import 'pages/food_log_page.dart';
import 'pages/water_tracker_page.dart';
import 'theme_provider.dart';
import 'pages/register_page.dart';

void main() => runApp(
      ChangeNotifierProvider(
        // Provide ThemeProvider to the entire app
        create: (_) => ThemeProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme mode from provider
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Health & Fitness', // App title
      theme: ThemeData(
        brightness: Brightness.light, // Light theme settings
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark theme settings
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
        ),
      ),
      themeMode: themeProvider.themeMode,  // Use theme mode from ThemeProvider
      home: LoginPage(), // Start the app on the login page
      routes: {
        // Define all navigation routes
        '/dashboard': (context) => DashboardPage(username: '',),
        '/plan': (context) => PlanPage(),
        '/weight': (context) => WeightChartPage(),
        '/food': (context) => FoodLogPage(),
        '/water': (context) => WaterTrackerPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
