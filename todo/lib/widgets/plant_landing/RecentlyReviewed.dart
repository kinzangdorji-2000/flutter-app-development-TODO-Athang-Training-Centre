import 'package:flutter/material.dart';
import 'package:todo/widgets/plant_landing/PlantSmallCard.dart';

class RecentlyReviewed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently Reviewed',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top:8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                  PlantSmallCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}