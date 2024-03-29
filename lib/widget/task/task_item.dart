import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  String task;
  Task({Key key, this.task}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isComplete = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: <Widget>[
          Checkbox(
            
            value: isComplete,
            checkColor: Colors.white,
            activeColor: Color.fromRGBO(72, 182, 162, 1),
            onChanged: (bool resp) {
              setState(() {
                isComplete = resp;
              });
            },
            tristate: false,
          ),
          Container(
              margin: EdgeInsets.only(left: 24),
            child: Text(
              widget.task,
              textDirection: TextDirection.ltr,
              style: (TextStyle(
                  color: isComplete
                      ? Color.fromRGBO(72, 182, 162, 1)
                      : Color.fromRGBO(22, 22, 22, 1),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }
}
