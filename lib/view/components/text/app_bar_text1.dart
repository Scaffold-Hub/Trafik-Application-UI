import 'package:flutter/material.dart';

class AppBarText1 extends StatelessWidget {
  const AppBarText1({Key? key}) : super(key: key);

  get textColor => Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ehliyet',
      style: TextStyle(
        fontSize: 24.0,
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
