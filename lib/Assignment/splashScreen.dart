import 'dart:async';

import 'package:flutter/material.dart';

import 'LoginPage.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>FamLoginPage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xff392950),
      body: Padding(
        padding: const EdgeInsets.only(top:100,left: 150,right:150),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/f.png"),
                )
              ),
            ),
          ],
        ),
      ),

    );
  }
}
