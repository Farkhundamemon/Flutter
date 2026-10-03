import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/todo.dart';
import 'package:flutter_application_1/View/home.dart';
import 'package:flutter_application_1/View/login_Screen.dart';
import 'package:flutter_application_1/View/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileSc(),
    );
  }
}

