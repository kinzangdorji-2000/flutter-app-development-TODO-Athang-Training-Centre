import 'package:flutter/material.dart';

class JourneyContentCard extends StatelessWidget {
 
  const JourneyContentCard({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2016/11/23/15/32/pedestrians-1853552_640.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.heart_broken)),
                    Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.comment)),
                    Icon(Icons.share)
                  ],
                ),
                Row(
                  children: [Icon(Icons.save)],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}