import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/widgets/plant_landing/MediumPlantCard.dart';

class LatestProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Products',
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
            ),
          ),
          MediumPlantCard(title: "Title 1", url : "https://cdn.pixabay.com/photo/2024/02/14/16/45/leaves-8573845_640.jpg"),
          MediumPlantCard(title: "Title 2", description: "Description",),
          MediumPlantCard(title: "Title 3", url: "https://cdn.pixabay.com/photo/2024/02/14/16/45/leaves-8573845_640.jpg"),
          MediumPlantCard(title: "Title 4",),
          MediumPlantCard(title: "Title 5",),
          MediumPlantCard(title: "Title 6",),
        ],
      ),
    );
  }
}