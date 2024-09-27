import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TradingBuddy',
      theme: ThemeData.dark(),
      home: SplashScreen(), // Set the splash screen as the initial screen
      debugShowCheckedModeBanner: false,
    );
  }
}
