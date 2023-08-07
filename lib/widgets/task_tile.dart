import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskTile;
  final bool isChecked;
  final void Function() longPressCallback;
  final void Function(bool?) checkboxCallback;

  TaskTile({required this.isChecked,required this.taskTile,required this.checkboxCallback,required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTile,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}


