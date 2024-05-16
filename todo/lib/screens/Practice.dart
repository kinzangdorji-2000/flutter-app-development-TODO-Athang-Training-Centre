import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Text(
                  'AURORA',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'NotoSerif_Condensed',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}