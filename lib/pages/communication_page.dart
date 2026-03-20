import 'package:flutter/material.dart';
import '../main.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Communication"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("Show SnackBar"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: const Text("Message Sent!"),
                    action: SnackBarAction(label: "Undo", onPressed: () {}),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            codeBox('''ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Text("Saved"),
  ),
);'''),
          ],
        ),
      ),
    );
  }
}