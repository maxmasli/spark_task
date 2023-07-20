import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_spark/list_screen/provider/task_model.dart';
import 'package:test_spark/list_screen/widgets/task_large_body.dart';
import 'package:test_spark/list_screen/widgets/task_small_body.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final body = width > 500 ? const TaskLargeBody() : const TaskSmallBody();

    return ChangeNotifierProvider(
      create: (context) => TaskModel(),
      child: Scaffold(
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
