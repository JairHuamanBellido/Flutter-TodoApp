import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  List tasks = [];
  String name = "";
  void increment() {
    print("Aumentando");
    setState(() {
        tasks.add(name);
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[

                      TextField(
                        controller: myController,
                        onChanged: (String value){
                            setName(value);
                        },
                      ),
                      RaisedButton(
                        onPressed: increment,
                        child: Text(
                          'Agregar',
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (var item in tasks) Text(item.toString())
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
