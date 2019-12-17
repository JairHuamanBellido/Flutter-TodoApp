import 'package:flutter/material.dart';
import 'package:same_project/widget/header/header_container.dart';
import 'package:same_project/widget/task/task_container.dart';
import 'package:same_project/widget/task/task_item.dart';
import 'package:same_project/widget/task/form_task.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  List tasks = [];
  String name = "";
  void addTask(value) {
    print("Añadiendo tarea");
    setState(() {
      tasks.add(value);
    });
    myController.clear();
  }

  void setName(String value) {
    print("Cambiando");
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Header(),
                        TaskContainer(tasks: this.tasks)
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(55, 55, 55, .06),
                          offset: Offset(0.0, -6),
                          blurRadius: 24)
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      FormTask(
                        controller: this.myController,
                        addTask: this.addTask,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
