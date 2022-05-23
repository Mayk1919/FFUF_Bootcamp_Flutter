import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:todo/model/task.dart';


class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List <Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone,),
        TaskTile(taskTitle: tasks[1].name,isChecked: tasks[1].isDone,)
      ],
    );
  }
}