import 'package:flutter/material.dart';
import 'package:todo/widgets/discovery_widgets/JourneyContentContainer.dart';
import 'package:todo/widgets/discovery_widgets/JourneyHeader.dart';

class JourneyContainer extends StatelessWidget {
  const JourneyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Column(
        children: [
          JourneyHeader(),
          JourneyContentContainer()
        ],
      ),
    );
  }
}