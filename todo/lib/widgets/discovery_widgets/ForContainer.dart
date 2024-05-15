import 'package:flutter/material.dart';
import 'package:todo/widgets/discovery_widgets/ForContentsContainer.dart';
import 'package:todo/widgets/discovery_widgets/ForYourHeader.dart';

class ForContainer extends StatelessWidget {
  const ForContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          ForYourHeader(),
          ForContentsContainer()
        ],
      ),
    );
  }
}