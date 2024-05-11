import 'package:flutter/material.dart';
import 'package:todo_riv/data/data.dart';
import 'package:todo_riv/utils/extensions.dart';

import 'common_container.dart';

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
          : ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              padding: EdgeInsets.zero,
              itemBuilder: ((context, index) => Text('Home'))),
    );
  }
}
