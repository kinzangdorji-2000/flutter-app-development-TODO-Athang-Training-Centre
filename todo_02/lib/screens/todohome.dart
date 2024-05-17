import 'package:flutter/material.dart';


// Stateful widgets can rerender the screen when the data is reloaded
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
          // we need to use setState, an inbuilt method to change the variable
          // changing it directly will not rerender the screen
          setState(() {
          // title = "something new";
            count++;
          });
           // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(
          //       title,
          //       style: TextStyle(fontSize: 32),
          //     ),
          //   ),
          // );
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
