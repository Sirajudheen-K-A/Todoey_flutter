import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTile: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkBoxState){
                 taskData.updateTask(task);
                },
                longPressCallback: (){
                  taskData.deleteTask(task);
            },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
