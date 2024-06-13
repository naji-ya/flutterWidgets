import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpandedWidget(),
  ));
}

class ExpandedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height:double.infinity,
            width: 100,
            color: Colors.yellow,
          ),
          Expanded(
            child: Container(
              height:double.infinity,
              width: 100,
              color: Colors.pink,
            ),
          ),

             Container(
               height:double.infinity,
               width: 100,
              color: Colors.green,
            ),

        ],
      ),
    );
  }
}
