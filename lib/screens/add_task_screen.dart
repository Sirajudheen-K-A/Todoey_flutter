import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
          topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,
            color: Colors.lightBlueAccent,),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
             Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
             Navigator.pop(context);
            }, child: Text('Add',
            style: TextStyle(color: Colors.white,
            fontSize: 20),),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 15))),)
          ],
        ),
      ),
    );
  }
}
