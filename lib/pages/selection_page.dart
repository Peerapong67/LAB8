import 'package:flutter/material.dart';
import '../main.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  bool _switchValue = false;
  bool _checkboxValue = false;
  int _radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return DemoPageLayout(
      title: "Selection",
      demo: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Switch
          const Text("Switch", style: TextStyle(fontWeight: FontWeight.bold)),
          SwitchListTile(
            title: const Text("Enable Notifications"),
            value: _switchValue,
            onChanged: (v) => setState(() => _switchValue = v),
          ),
          const SizedBox(height: 8),

          // Checkbox
          const Text("Checkbox", style: TextStyle(fontWeight: FontWeight.bold)),
          CheckboxListTile(
            title: const Text("Accept Terms"),
            value: _checkboxValue,
            onChanged: (v) => setState(() => _checkboxValue = v ?? false),
          ),
          const SizedBox(height: 8),

          // Radio
          const Text("Radio", style: TextStyle(fontWeight: FontWeight.bold)),
          RadioGroup<int>(
            groupValue: _radioValue,
            onChanged: (v) => setState(() => _radioValue = v!),
            child: const Column(
              children: [
                RadioListTile(value: 1, title: Text("Option 1")),
                RadioListTile(value: 2, title: Text("Option 2")),
              ],
            ),
          ),
        ],
      ),
      code: '''// Switch
SwitchListTile(
  value: _switchValue,
  onChanged: (v) => setState(() => _switchValue = v),
);

// Checkbox
CheckboxListTile(
  value: _checkboxValue,
  onChanged: (v) => setState(() => _checkboxValue = v ?? false),
);

// Radio
RadioGroup<int>(
  groupValue: _radioValue,
  onChanged: (v) => setState(() => _radioValue = v!),
  child: const Column(
    children: [
      RadioListTile(value: 1, title: Text("Option 1")),
      RadioListTile(value: 2, title: Text("Option 2")),
    ],
  ),
);''',
    );
  }
}