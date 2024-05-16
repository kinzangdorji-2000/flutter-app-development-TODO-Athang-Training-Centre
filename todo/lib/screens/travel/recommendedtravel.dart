import 'package:flutter/material.dart';
import 'package:todo/models/placesmodels.dart';
import 'package:todo/widgets/travel_widgets/mediumtravelcard.dart';


class recommendedtravel extends StatelessWidget {
  // List<String> places = ["Paro", "Thimphu", "Punakha", "Wangdue Phodrang"];
  List<placesmodels> placeList = [
    placesmodels(
        img:
            "https://cdn.pixabay.com/photo/2013/08/10/22/55/temple-171377_1280.jpg",
        description: "This is a beautiful view", title: "Paro Taktshang"),
    placesmodels(
        img:
            "https://cdn.pixabay.com/photo/2017/09/07/13/21/palace-2725141_640.jpg",
        description: "This is a beautiful view", title: "Punakha Dzong"),
    placesmodels(
        img:
            "https://cdn.pixabay.com/photo/2017/09/30/07/26/bhutan-2801349_640.jpg",
        description: "This is a beautiful view", title: "Kunsel Phodrang"),    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Column(
                children: placeList.map((placesmodels el){
                  return mediumtravelcard(
                    title: el.title, description: el.description, url: el.img,
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
