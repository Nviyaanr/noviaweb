import 'package:flutter/material.dart';
import 'package:novia_web/ui_screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: const Home(),
    );
  }
}
