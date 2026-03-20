import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/actions_page.dart';
import '/pages/communication_page.dart';
import '/pages/containment_page.dart';
import '/pages/navigation_page.dart';
import '/pages/selection_page.dart';
import '/pages/input_page.dart';

// --- Reusable Widget สำหรับแสดง Code ---
Widget codeBox(String code) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color(0xFF282C34),
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.5),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Example Code",
            style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
        const Divider(color: Colors.white24),
        Text(
          code,
          style: const TextStyle(
            color: Color(0xFFABB2BF),
            fontFamily: 'monospace',
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

// --- Layout พื้นฐานสำหรับหน้าย่อย ---
class DemoPageLayout extends StatelessWidget {
  final String title;
  final Widget demo;
  final String code;

  const DemoPageLayout({super.key, required this.title, required this.demo, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Card(
              elevation: 0,
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(child: demo),
              ),
            ),
            const SizedBox(height: 24),
            codeBox(code),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3 Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ),
      routes: {
        '/actions': (_) => const ActionsPage(),
        '/communication': (_) => const CommunicationPage(),
        '/containment': (_) => const ContainmentPage(),
        '/navigation': (_) => const NavigationPage(),
        '/selection': (_) => const SelectionPage(),
        '/input': (_) => const InputPage(),
      },
      home: const HomePage(),
    );
  }
}