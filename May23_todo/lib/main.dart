import 'package:flutter/material.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(

      create: (BuildContext context)=> TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
