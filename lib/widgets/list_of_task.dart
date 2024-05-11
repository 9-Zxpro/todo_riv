import 'package:flutter/material.dart';
import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/utils/utils.dart';
import 'package:todo_riv/widgets/widgets.dart';

class ListOfTask extends StatelessWidget {
  const ListOfTask(
      {super.key, required this.tasks, this.isCompletedTasks = false});
  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTaskMessage = isCompletedTasks
        ? 'There is no completed task yet'
        : 'There is no task ToDo';

    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTaskMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final task = tasks[index];

                return InkWell(
                  onLongPress: () {
                    // toDo delete task
                  },
                  onTap: () async {
                    // todo show task details
                    await showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return TaskDetails(task: task);
                        });
                  },
                  child: TaskTitle(
                    task: task,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
