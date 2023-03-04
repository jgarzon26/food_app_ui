import 'package:flutter/material.dart';
import 'package:food_app_ui/screens_home/homepage.dart';
import 'package:food_app_ui/theme.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App UI',
      theme: buildThemeData(),
      home: const HomePage(),
    );
  }
}