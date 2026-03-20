import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> pages = [
      {'title': 'Actions', 'route': '/actions', 'icon': Icons.touch_app, 'color': Colors.blue},
      {'title': 'Communication', 'route': '/communication', 'icon': Icons.chat_bubble, 'color': Colors.orange},
      {'title': 'Containment', 'route': '/containment', 'icon': Icons.inventory_2, 'color': Colors.green},
      {'title': 'Navigation', 'route': '/navigation', 'icon': Icons.explore, 'color': Colors.red},
      {'title': 'Selection', 'route': '/selection', 'icon': Icons.check_box, 'color': Colors.purple},
      {'title': 'Text Input', 'route': '/input', 'icon': Icons.edit_note, 'color': Colors.teal},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Components",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: pages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          final page = pages[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () => Navigator.pushNamed(context, page['route']),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor:
                          (page['color'] as Color).withValues(alpha: 0.2),
                      child: Icon(page['icon'],
                          color: page['color'], size: 28),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      page['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}