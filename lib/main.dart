import 'package:flutter/material.dart';
import 'page/HomePage.dart';

void main() {
  runApp(const MyApp());
}

// TODO: Add icons in buttons by figma template

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Option',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1F2023),
        fontFamily: 'SourceCodePro'
      ),
      home: HomePage(title: 'Pocket Option'),
    );
  }
}