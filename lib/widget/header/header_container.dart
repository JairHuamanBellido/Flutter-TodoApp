import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/Logo.svg',
              semanticsLabel: 'Logo',
              height: 64,
            ),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 8),
              child: Text(
                'Martes',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              child: Text(
                'Diciembre 17, 2019',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, .67),
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ));
  }
}
