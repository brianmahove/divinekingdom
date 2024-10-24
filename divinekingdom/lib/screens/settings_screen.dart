import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            title: Text('Dark Mode'),
          ),
          const Divider(),
          ListTile(
            title: const Text('Sign In'),
            onTap: () {
              // Navigate to Sign In screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Change Language'),
            onTap: () {
              // Implement language change functionality
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Create Account'),
            onTap: () {
              // Navigate to Create Account screen
            },
          ),
          const Divider(),
          const Text(
            'Copyright © brianmahove2024. Powered by Vizion',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
