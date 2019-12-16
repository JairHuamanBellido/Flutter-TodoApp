import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTask extends StatelessWidget {
  final TextEditingController controller;
  final dynamic addTask;

  String task;
  FormTask({Key key, this.controller, this.addTask}) : super(key: key);

  void _addTask() {
    print('Añadiendo la tarea $task');
    this.addTask(task);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: this.controller,
              onChanged: (String value) {
                task = value;
              },
              decoration: InputDecoration(
                hintText: 'Add a new task',
                border: InputBorder.none,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 24),
              child: FlatButton(
                splashColor: Color.fromRGBO(72, 150, 162, .5),
                onPressed: _addTask,
                padding: EdgeInsets.symmetric(vertical: 16),
                color: Color.fromRGBO(72, 209, 162, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
