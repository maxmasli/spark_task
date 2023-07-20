import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_spark/list_screen/provider/task_model.dart';
import 'package:test_spark/list_screen/widgets/tile_widget.dart';

class TaskSmallBody extends StatelessWidget {
  const TaskSmallBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _FilterButtonsWidget(),
        _TasksListWidget(),
      ],
    );
  }
}


class _FilterButtonsWidget extends StatelessWidget {
  const _FilterButtonsWidget();

  @override
  Widget build(BuildContext context) {
    final taskModel = context.read<TaskModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(height: 4),
          FractionallySizedBox(
            widthFactor: 1.0,
            child: ElevatedButton(
              onPressed: () {
                taskModel.showTasks();
              },
              child: const Text("Default Tasks"),
            ),
          ),
          const SizedBox(height: 4),
          FractionallySizedBox(
            widthFactor: 1.0,
            child: ElevatedButton(
              onPressed: () {
                taskModel.showImageTasks();
              },
              child: const Text("Image Tasks"),
            ),
          ),
          const SizedBox(height: 4),
          FractionallySizedBox(
            widthFactor: 1.0,
            child: ElevatedButton(
              onPressed: () {
                taskModel.showLongTasks();
              },
              child: const Text("Long Tasks"),
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

class _TasksListWidget extends StatelessWidget {
  const _TasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTasks = context.watch<TaskModel>().currentTasks;
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TileWidget(
            title: currentTasks[index].title,
            description: currentTasks[index].description,
            imageUrl: currentTasks[index].imageUrl,
          );
        },
        itemCount: currentTasks.length,
      ),
    );
  }
}

