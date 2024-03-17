import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/task_data.dart';
import '../widgetsFolder/task_list.dart';
import 'add_task_screen.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:provider/provider.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => addTaskScreen());
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 40, bottom: 30),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.menu,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: taskList(
                      //    tasks: Provider.of<TaskData>(context).tasks,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
