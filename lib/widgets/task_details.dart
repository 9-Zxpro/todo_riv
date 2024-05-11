import 'package:flutter/material.dart';
import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/utils/extensions.dart';
import 'package:todo_riv/widgets/widgets.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({required this.task, super.key});
  final Task task;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(0.3),
            child: Icon(
              task.category.icon,
              color: task.category.color,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            task.title,
            style: style.titleMedium?.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            task.time,
            style: style.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Visibility(
            visible: !task.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Task to be completed on ${task.date}'),
                Icon(
                  Icons.check_box,
                  color: task.category.color,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1.5,
            color: task.category.color,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            task.note.isEmpty ? 'There is no additional information for this task.' : task.note,
            style: style.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Visibility(
            visible: task.isCompleted,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Task completed'),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
