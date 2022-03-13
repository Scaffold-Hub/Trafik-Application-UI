import 'package:flutter/material.dart';
import 'package:trafic_app/view/widgets/setting_page.dart';

class AppBarActionsButton extends StatelessWidget {
  const AppBarActionsButton({Key? key}) : super(key: key);

  get iconColor => Colors.black;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const SettingsPage(),
          ),
        );
      },
      icon: Icon(
        Icons.settings,
        color: iconColor,
        size: 30.0,
      ),
    );
  }
}
