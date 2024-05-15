import 'package:flutter/material.dart';
import 'package:todo/widgets/discovery_widgets/ForContainer.dart';
import 'package:todo/widgets/discovery_widgets/Header.dart';
import 'package:todo/widgets/discovery_widgets/JourneyContainer.dart';
import 'package:todo/widgets/discovery_widgets/Search.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Column(
            children: [
              Header(),
              Search(),
              ForContainer(),
              JourneyContainer()
            ],
          ),
        ),
      ),
    );
  }
}