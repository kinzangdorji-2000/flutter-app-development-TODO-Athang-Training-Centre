import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color.fromARGB(255, 33, 128, 243)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2022/03/26/11/43/flower-7092794_640.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Indoor',
            style: TextStyle(fontSize: 16),
          ),
          Text('Lily Bloom', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
