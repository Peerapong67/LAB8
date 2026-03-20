import 'package:flutter/material.dart';
import '../main.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoPageLayout(
      title: "Containment",
      demo: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          ],
        ),
      ),
      code: '''Card(
  child: Column(
    children: [
      ListTile(title: Text("Title")),
    ],
  ),
);''',
    );
  }
}
