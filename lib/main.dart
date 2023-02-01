import 'package:flutter/material.dart';
import 'package:todo_app_with_api/screens/addTask_screen.dart';
import 'package:todo_app_with_api/screens/home_screen.dart';
import 'package:todo_app_with_api/screens/signIn_screen.dart';
import 'package:todo_app_with_api/screens/tasks_screen.dart';
import 'package:todo_app_with_api/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        Welcome.routeName: (context) => const Welcome(),
        SignIn.routeName: (context) => const SignIn(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        Tasks.routeName: (context) => const Tasks(),
        AddTask.routeName: (context) => const AddTask(),
      },
    );
  }
}
