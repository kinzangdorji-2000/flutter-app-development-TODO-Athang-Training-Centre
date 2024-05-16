import 'package:flutter/material.dart';
// import 'package:todo/screens/Discovery.dart';
// import 'package:todo/screens/Practice.dart';
import 'package:todo/screens/travel/traveller.dart';
// import 'package:todo/screens/PlantLanding.dart';
// import 'package:todo/screens/Practice.dart';

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
      // home: const PlantLanding(),
      // home: Practice(),
      // home: const Discovery(),
      // home: const Practice(),
      home: traveller(),

    );
  }
}
