import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("HK Store"),
        backgroundColor: Color.fromARGB(255, 26, 118, 255),
        // foregroundColor: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.blueGrey,
          child: Text("We Are Providing Nothing....",
           style: TextStyle(
          color: Colors.white,
          fontFamily: "Arial",
          fontSize: 24,
          fontStyle: FontStyle.italic,
          ),
          ),
        ),
      ),
      );
  }
}