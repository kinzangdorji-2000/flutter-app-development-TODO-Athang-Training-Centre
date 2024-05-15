import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Text(
            'G*FIT.',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}