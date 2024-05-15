import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discovery',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "You're in Prague",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(20), // Same radius as the Container
              child: Image.network(
                'https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}