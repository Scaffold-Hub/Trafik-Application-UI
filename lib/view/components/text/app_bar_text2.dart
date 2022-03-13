import 'package:flutter/material.dart';

class AppBarText2 extends StatelessWidget {
  const AppBarText2({Key? key}) : super(key: key);

  get textColor => Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sınav Soruları',
      style: TextStyle(
        color: textColor,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
