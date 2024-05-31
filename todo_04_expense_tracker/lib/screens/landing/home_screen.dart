import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/plugins/local_shared_preferences.dart';
import 'package:todo_04_expense_tracker/widgets/landing/summary_accounts.dart';
import 'package:todo_04_expense_tracker/widgets/landing/summary_home.dart';
import 'package:todo_04_expense_tracker/widgets/landing/summary_transactions.dart';
import '../splash_screen.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: [
          SummaryHome(),
          SummaryAccounts(),
          SummaryTransactions()
        ],
      ),
    );
   }
}
