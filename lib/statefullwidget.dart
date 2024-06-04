import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewState(),));
  
}

class NewState extends StatefulWidget {


  @override
  State<NewState> createState() => _NewStateState();
}

class _NewStateState extends State<NewState> {

  @override
  void initState() {
    Timer(Duration(
      seconds: 3
    ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/imagee.jpg"),
        fit: BoxFit.fill),
        ),
          child: const Center(
            child: Image(image: AssetImage("assets/images/contrast.png"
            ),
            height: 100,
            width: 100,),
          ),

    ),
    );
  }
}

     
