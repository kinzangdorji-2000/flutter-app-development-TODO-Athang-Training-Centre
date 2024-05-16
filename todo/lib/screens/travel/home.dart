import 'package:flutter/material.dart';
import 'package:todo/screens/travel/populartravel.dart';
import 'package:todo/screens/travel/recommendedtravel.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Bhutan'),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          populartravel(),
          recommendedtravel(),
        ],
      ),
      ),
    );
  }
}