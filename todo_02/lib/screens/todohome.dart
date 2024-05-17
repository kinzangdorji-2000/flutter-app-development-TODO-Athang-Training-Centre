import 'package:flutter/material.dart';

class todohome extends StatefulWidget {
  @override
  State<todohome> createState() => _todohomeState();
}

class _todohomeState extends State<todohome> {
  String title = "Hello World!";
  num count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Text(
            count.toString(),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
