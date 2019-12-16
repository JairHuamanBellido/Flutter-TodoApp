import 'package:flutter/material.dart';
import 'package:same_project/Form_task.dart';
import 'package:same_project/Task_item.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                child: Container(
                  width: 200,
                  height: 500,
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          child: Task(
                        task: tasks[index],
                      ));
                    },
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
