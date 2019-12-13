import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _formKey = GlobalKey<FormState>();

  int count = 0;

  List numbers = [1, 2, 34, 2];
  String name = "";
  void increment() {
    print("Aumentando");
    setState(() {
      numbers.add(name);
    });
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            InputDecoration(hintText: 'Enter your email'),
                        onChanged: (String value) {
                          this.setName(value);
                        },
                      ),
                      RaisedButton(
                        onPressed: increment,
                        child: Text(
                          'Aumentar',
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (var item in numbers) Text(item.toString())
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
