import 'package:flutter/material.dart';
import 'package:lavaceu_app/app/screens/home_screen.dart';
import 'package:lavaceu_app/app/screens/login_screen.dart';
import 'package:lavaceu_app/app/theme_notifier.dart';

class LavaceuApp extends StatelessWidget {
  const LavaceuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeChangeNotifier.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'LavaCEU | Lavanderia da CEU II',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: ThemeChangeNotifier.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
