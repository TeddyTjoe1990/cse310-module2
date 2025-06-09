import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'register_page.dart';

// StatelessWidget because we're not managing internal state here
class LoginPage extends StatelessWidget {
  // Controllers to retrieve input from TextFields
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')), // Page title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the form
        child: Column(
          children: [
            // Username input
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            // Password input with hidden text
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, // Hides password input
            ),
            SizedBox(height: 20), // Space between fields and button

            // Login button
            ElevatedButton(
              onPressed: () {
                // Get the trimmed username
                String username = _usernameController.text.trim();

                // Basic validation: check if username is empty
                if (username.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a username')),
                  );
                  return;
                }

                // Navigate to Dashboard and replace LoginPage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => DashboardPage(username: username)),
                );
              },
              child: Text('Login'),
            ),

            // Navigation to RegisterPage
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RegisterPage()),
                );
              },
              child: Text("Don't have an account? Register"),
            ),
          ],
        ),
      ),
    );
  }
}
