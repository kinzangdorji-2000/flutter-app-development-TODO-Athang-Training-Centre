
import 'package:flutter/material.dart';
import 'package:todo/widgets/ProductCard.dart';
import 'package:todo/widgets/SmallProductCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 7, 255), 
        title: const Text(
          'Flutter Demo App',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
              ],
            )),
      ),
    );
  }
}
