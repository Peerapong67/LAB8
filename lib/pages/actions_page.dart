import 'package:flutter/material.dart';
import '../main.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Actions"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add Action"),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.touch_app),
              label: const Text("Elevated Button"),
            ),
            const SizedBox(height: 24),
            codeBox('''FloatingActionButton.extended(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text("Add Action"),
);

ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.touch_app),
  label: Text("Elevated Button"),
);'''),
          ],
        ),
      ),
    );
  }
}