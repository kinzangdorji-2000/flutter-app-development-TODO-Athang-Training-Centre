import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumPlantCard extends StatelessWidget {
  String title;
  String url;
  String description;

  MediumPlantCard({
    required this.title,
    this.description = "",
    this.url = "https://cdn.pixabay.com/photo/2024/02/14/16/45/leaves-8573845_640.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2024/05/08/19/56/ai-generated-8749022_640.jpg",
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name of the description.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Description'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
