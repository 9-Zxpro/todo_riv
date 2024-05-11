import 'package:flutter/material.dart';
import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/utils/utils.dart';
import 'package:todo_riv/widgets/widgets.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({super.key, required this.task, this.onCompleted});
  final Task task;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    final double iconOpacity = task.isCompleted ? 0.3 : 0.9;
    final double bgOpacity = task.isCompleted ? 0.1 : 0.3;
    final textDecoration =
        task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = task.isCompleted ? FontWeight.normal : FontWeight.bold;

    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        left: 10,
        bottom: 6,
      ),
      child: Row(
        children: [
          CircleContainer(
            color: task.category.color.withOpacity(bgOpacity),
            child: Center(
              child: Icon(
                task.category.icon,
                color: task.category.color.withOpacity(iconOpacity),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                    fontSize: 20,
                    fontWeight: fontWeight,
                  ),
                ),
                Text(task.time,
                style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                  ),),
              ],
            ),
          ),
          Checkbox(
            value: task.isCompleted,
            onChanged: onCompleted,
          )
        ],
      ),
    );
  }
}
