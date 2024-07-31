import 'package:flutter/material.dart';
import 'package:lavaceu_app/app/components/theme_change_switch.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(
      {super.key,
      super.title = const Text('LavaCEU | Lavanderia da CEU II'),
      super.actions = const [ThemeChangeSwitch()]});
}
