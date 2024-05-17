import 'package:flutter/material.dart';
// import 'package:todo_02/screens/addtask.dart';
import 'package:todo_02/screens/login.dart';
import 'package:todo_02/screens/todohome.dart';
// import 'package:todo_02/screens/todohome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home is no longer required when using named routes
      //we must define the initial route for the app
      //initial route defines which route to open when app start
      initialRoute: '/',
      // home: login(),
      routes: {
        '/': (context)=> login(),
        '/home': (context) => todohome(),
      },
    );
  }
}

