import 'package:flutter/cupertino.dart';

class Task extends StatelessWidget {
  final String task;
  const Task({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
      child: Text(
        this.task,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
