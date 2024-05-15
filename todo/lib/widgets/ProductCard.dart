import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 500,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2022/07/08/15/42/dodge-challenger-7309462_640.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              'Welcome to the world of Dodge',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Price: Nu.120',
          //       style: TextStyle(fontSize: 32),
          //     ),
          //     Icon(Icons.shopping_cart)
          //   ],
          // ),
          Container(
            child: const Text(
              'The Dodge Car lineup embodies the essence of American muscle cars with its distinctively bold and muscular design. These vehicles boast aggressive styling cues such as imposing grilles, sculpted hoods, and dynamic body lines, projecting a commanding presence on the road. Under the hood, Dodge cars are powered by high-performance engines ranging from potent V6 options to adrenaline-pumping V8 powerhouses, delivering exceptional acceleration and speed capabilities.',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
