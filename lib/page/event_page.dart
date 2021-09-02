import 'package:flutter/material.dart';

class NewEventPage extends StatelessWidget {
  const NewEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Event'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_today, size: 100),
            const SizedBox(height: 12),
            Text(
              'New Event',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
