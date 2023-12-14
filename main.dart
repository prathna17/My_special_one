import 'package:flutter/material.dart';
import 'package:for_my_special_one/screens/happy_new_year.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: New_year(),
    );
  }
}
