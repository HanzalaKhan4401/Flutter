import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.blueGrey,
            border: Border.all(width: 20, color: Colors.black)
          ),
          height: 365,   
          width: 365,
          // child: ElevatedButton(onPressed: () => print("Daba Diya..."), child: Text("Click Me"),),
          
          child: GestureDetector(
            child: Center(
              child:Image.asset("images/2.jfif",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              ),   
              ),
              onTap: () => print("Hello From Gesture Detector"),
          ),   
        ) ,
      ),
    );
  }
}