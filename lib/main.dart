import 'package:flutter/material.dart';
import 'package:mit/src/config/texts.dart';
import 'package:mit/src/config/theme.dart';
import 'package:mit/src/data/pages/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Texts.demo,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: Texts.title),
    );
  }
}

