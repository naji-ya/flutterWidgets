import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(

    home: CarouselsliDerEx(),
  ));
}

class CarouselsliDerEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Container(
          
          height: 300,
          width: 500,
          child:CarouselSlider(
            items: [
            Image(image: AssetImage("assets/images/Havasu.jpg")),
            Image(image: AssetImage("assets/images/Statue.webp")),
            Image(image: AssetImage("assets/images/vancouver.jpg")),
            Image(image: AssetImage("assets/images/sunset.jpg")),
            Image(image: AssetImage("assets/images/finland.jpeg")),
          ], options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,

            

          ),)
        ),
      ),
    );
  }
}
