import 'package:flutter/material.dart';
import 'package:todo/widgets/plant_landing/PlantCard.dart';

class RecommendedPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Recommended',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Indoor', style: TextStyle(fontSize: 24)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Outdoor', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                    PlantCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}