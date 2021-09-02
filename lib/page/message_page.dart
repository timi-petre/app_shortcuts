import 'package:flutter/material.dart';

class NewMessagePage extends StatelessWidget {
  const NewMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Message'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message, size: 100),
            const SizedBox(height: 12),
            Text(
              'New Message',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
