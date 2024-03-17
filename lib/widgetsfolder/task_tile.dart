import 'package:flutter/material.dart';

class tasktile extends StatelessWidget {
  final bool isChecked;
  final String tasketitle;
  final void Function(bool?) checkboxcallback;
  final void Function() longpressCallback;

  tasktile(
      {required this.isChecked,
      required this.tasketitle,
      required this.checkboxcallback,
      required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpressCallback,
        title: Text(
          tasketitle,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.blue,
          value: isChecked,
          onChanged: checkboxcallback,
        ));
  }
}

//
