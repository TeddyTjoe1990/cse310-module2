import 'package:flutter/material.dart';
import 'dashboard_page.dart'; // Make sure this import is correct and the file exists

// Registration page UI
class RegisterPage extends StatelessWidget {
  // Controllers to get input from the user
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')), // Top app bar with page title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the form
        child: Column(
          children: [
            // Username input field
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            // Password input field (obscured for security)
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20), // Adds space before the button
            ElevatedButton(
              onPressed: () {
                // On register, navigate to the dashboard (username not passed here)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => DashboardPage(username: '',)),
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
