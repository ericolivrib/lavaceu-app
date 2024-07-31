import 'package:flutter/material.dart';
import 'package:lavaceu_app/app/theme_notifier.dart';

class ThemeChangeSwitch extends StatefulWidget {
  const ThemeChangeSwitch({super.key});

  @override
  State<ThemeChangeSwitch> createState() => _ThemeChangeSwitchState();
}

class _ThemeChangeSwitchState extends State<ThemeChangeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: ThemeChangeNotifier.instance.isDarkTheme,
      onChanged: (value) => {
        setState(() {
          ThemeChangeNotifier.instance.changeTheme();
        })
      },
    );
  }
}
