import 'package:flutter/material.dart';
import 'package:todo/models/placesmodels.dart';
import 'package:todo/widgets/travel_widgets/populartravelcard.dart';

class populartravel extends StatelessWidget {
  List<placesmodels> placeList = [
    placesmodels(img: "https://cdn.pixabay.com/photo/2015/07/22/07/27/bhutan-854933_640.jpg", description: "Districts", title: "Paro Dzong"),
    placesmodels(img: "https://cdn.pixabay.com/photo/2021/08/20/05/47/snow-6559541_640.jpg", description: "Winter snowfall", title: "Tashi Choe Dzong"),
    placesmodels(img: "https://cdn.pixabay.com/photo/2020/05/14/08/50/temple-5170500_640.jpg", description: "Temple", title: "A place to worship"),


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.only(left: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // map transforms the variable based on PlaceCardModel from line 7 to an
                // array of widgets in form of PopularCardTravel(...) which is then rendered
                // into the mobile screens
                children: placeList.map((placesmodels el) {
                  return populartravelcard(place:el);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
