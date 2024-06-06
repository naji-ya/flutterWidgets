import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LottieaniMation(),
  ));
}

class LottieaniMation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Container(

      child: Lottie.asset("animation/Animation.json",height: 100,

      width: 100),

    ),

    Container(
      child: Lottie.asset("animation/animation-Hai.json"),
    )
  ],
),
    );
  }
}
