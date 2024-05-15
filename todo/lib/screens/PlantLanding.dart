import 'package:flutter/material.dart';
import 'package:todo/widgets/plant_landing/LatestProducts.dart';
import 'package:todo/widgets/plant_landing/RecentlyReviewed.dart';
import 'package:todo/widgets/plant_landing/RecommendedPlant.dart';
import 'package:todo/widgets/plant_landing/SearchBarPlant.dart';

class PlantLanding extends StatelessWidget {
  const PlantLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discovery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarPlant(),
            RecommendedPlant(),
            RecentlyReviewed(),
            LatestProducts(),
          ],
        ),
      ),
    );
  }
}
