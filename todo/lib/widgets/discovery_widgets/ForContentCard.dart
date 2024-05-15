import 'package:flutter/material.dart';

class ForContentCard extends StatelessWidget {
final String url;
  final String title;
  final String description;

  const ForContentCard({
    super.key,
    required this.url,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: 300,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  description,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}