import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/base/style/text_style.dart';
import 'package:todo_04_expense_tracker/plugins/local_shared_preferences.dart';
import 'package:todo_04_expense_tracker/screens/landing/splash_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'Home',
              style: TypoStyles().kPageHeader,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              logoutUser();
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}