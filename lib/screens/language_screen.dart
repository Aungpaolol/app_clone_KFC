import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                // Add logic to change the app language to English
                Navigator.pop(context); // Close this screen
              },
            ),
            ListTile(
              title: const Text('Thai'),
              onTap: () {
                // Add logic to change the app language to Thai
                Navigator.pop(context); // Close this screen
              },
            ),
          ],
        ),
      ),
    );
  }
}