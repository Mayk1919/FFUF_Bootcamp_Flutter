import 'package:flutter/material.dart';
import 'package:may19/screens/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder:(context) => AddTaskScreen(),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30
            ),
          ),
          Column(

            children: [
              CircleAvatar(
                child: Icon(
                    Icons.list,
                size: 30,
                  color: Colors.pinkAccent,
                ),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Todo List',
              style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,

              ),
              ),

            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
              ),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Tasks App'),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (bool? value) {  },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
