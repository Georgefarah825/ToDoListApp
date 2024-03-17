
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgetsFolder/task_tile.dart';

import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Tasks task = taskdata.tasks[index];
            return tasktile(
              isChecked: task.isDone,
              tasketitle: task.name,
              checkboxcallback: (bool) {
                taskdata.updateTask(task);
              },
              longpressCallback: () {
                taskdata.deleteTask(task);
              },
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
