import 'package:flutter/cupertino.dart';

class DateItem extends StatelessWidget {
  const DateItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('Tuesday'),
      ),
    );
  }
}