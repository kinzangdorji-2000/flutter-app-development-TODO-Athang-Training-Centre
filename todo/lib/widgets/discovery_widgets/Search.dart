import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
      ),
      height: 50,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, left: 14, right: 4, bottom: 8),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 4, right: 8, bottom: 8),
            child: Text(
              'Where do you want to go',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}