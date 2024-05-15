import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     'Rose beetle insect beetle green',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   backgroundColor: Colors.amber,
        // ),
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1000,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2019/12/01/21/34/dodge-4666515_640.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Column(
                children: [
                  Text(
                    'Welcome to the',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'World of Dodge',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'Publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    ));
  }
}
