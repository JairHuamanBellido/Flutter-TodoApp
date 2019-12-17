import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:same_project/widget/task/task_item.dart';

class TaskContainer extends StatelessWidget {
  final List tasks;
  const TaskContainer({Key key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      
      
      child: ListView.builder(
        itemCount: this.tasks.length,
        
        itemBuilder: (BuildContext context, int index) {
          return Task(task: tasks[index]);
        },
      ),
    );
  }
}
