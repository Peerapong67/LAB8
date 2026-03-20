import 'package:flutter/material.dart';
import '../main.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoPageLayout(
      title: "Text Input",
      demo: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Enter Name",
          prefixIcon: Icon(Icons.person),
          hintText: "John Doe",
        ),
      ),
      code: '''TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: "Name",
  ),
);''',
    );
  }
}