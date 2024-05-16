import 'package:flutter/material.dart';
import 'package:todo/models/placesmodels.dart';
import 'package:todo/screens/travel/details.dart';


class mediumtravelcard extends StatelessWidget {
  String title;
  String url;
  String description;

  mediumtravelcard({
    required this.title,
    this.description = "Basic description",
    this.url =
        "https://cdn.pixabay.com/photo/2017/08/28/20/33/tigers-nest-2691190_640.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
           // since the value received is not based on PlaceCardModel,
          // the format that detail
          // travel receives the variable in,
          // and is received in fragments, we must convert the individual data
          // into DetailsTravel receiving format i.e, based on PlaceCardModel before
          // passing into DetailsTravel
          MaterialPageRoute(builder: (context) => details(place: placesmodels(
            title: title,
            img: url,
            description: description,
          ))),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(description),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}