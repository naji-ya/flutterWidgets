import 'dart:async';

import 'package:flutter/material.dart';

import 'Loginpageforrent.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:RentACar()
  ));
}

class RentACar  extends StatefulWidget{
  @override
  State<RentACar> createState() => _RentACarState();
}

class _RentACarState extends State<RentACar> {
@override
  void initState() {
    Timer(Duration(
      seconds: 3,
    ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>RentLoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade50,
body: Center(
  child: Container(
    height: 90,
    width: 90,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/images/car-rent.png"))
    ),
  ),
),

    );
  }
}