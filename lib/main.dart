import 'package:flutter/material.dart';
import 'package:task_screens/screens/SplashScreen.dart';
import 'package:task_screens/screens/TaskDetails.dart';
import 'package:task_screens/screens/walkthrough/WalkThrough.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      debugShowCheckedModeBanner: false,
      home: TaskManagerWalkthrough(),
      routes: {
        '/task-detals': (context) => const TaskDetails(),
      },
    );
  }
}
