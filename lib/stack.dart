

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackExample()
  ));
}

class StackExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color:Colors.yellow ,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            child: Container(
              color:Colors.green ,

            ),
            height: 100,
            width: 100,
            top: 160,
            right: 120,
          ),
          Positioned(
            child: Container(
              color:Colors.orange ,

            ),
            height: 100,
            width: 140,
            top: 160,
            left:10,
          ),
          Positioned(
            child: Container(
              color:Colors.grey ,

            ),
            height: 100,
            width: 160,
            top: 350,
            left:10,
          ),Positioned(
            child: Container(
              color:Colors.purple ,

            ),
            height: 200,
            width: 150,
            top: 400,
            right:10,
          ),Positioned(
            child: Container(
              color:Colors.blue ,

            ),
            height: 200,
            width: 300,
            top: 650,
            left:30,
          )
        ],
      ),
    );
  }
}
