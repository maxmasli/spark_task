import 'package:flutter/material.dart';
import 'package:test_spark/list_screen/pages/task_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
