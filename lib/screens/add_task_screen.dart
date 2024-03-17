import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

import '../models/tasks.dart';

TextEditingController newtext = TextEditingController();
String? newTasktitle;

class addTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
              TextField(
                controller: newtext,
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(),
                onChanged: (newText) {
                  newTasktitle = newText;
                  print(newTasktitle);
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  print(newTasktitle);
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTasktitle!);
                  Navigator.pop(context);
                },
                child: Container(
                    width: 300, height: 50, child: Center(child: Text('Add'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
