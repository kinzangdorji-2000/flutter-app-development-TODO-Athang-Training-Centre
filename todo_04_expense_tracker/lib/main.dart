import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/plugins/local_shared_preferences.dart';
import 'package:todo_04_expense_tracker/screens/landing/splash_screen.dart';

void main() {
  LocalStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
