import 'package:flutter/material.dart';

class PlantSmallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2020/10/13/08/58/apple-5651221_640.jpg",
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name of the product',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Description'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
