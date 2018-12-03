import 'package:flutter/material.dart';

class pic extends StatefulWidget {
  @override
  _picState createState() => _picState();
}

class _picState extends State<pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: 106.0,
        child: new Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pizza.jpg"),
              fit: BoxFit.cover,
              
            )
          ),
        ),
      ),
    );
  }
}