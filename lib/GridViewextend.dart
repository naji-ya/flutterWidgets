import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: GridviewExtend(),
//   ));
// }

class GridviewExtend  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 90),
      children: [
        Card(
          color: Colors.purpleAccent,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mobile_friendly),
              Text("Mobile"),

            ],
          ),
        ),

        Card(
          color: Colors.black,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail),
              Text("Mobile"),

            ],
          ),
        ),
        Card(
          color: Colors.yellowAccent,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mobile_screen_share_sharp),
              Text("Mobile"),

            ],
          ),
        ),
        Card(
          color: Colors.green,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.money_off_rounded),
              Text("Mobile"),

            ],
          ),
        ),
        Card(
          color: Colors.grey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mobiledata_off_outlined),
              Text("Mobile"),

            ],
          ),
        ),
        Card(
          color: Colors.yellow,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mode),
              Text("Mobile"),

            ],
          ),
        ),
      ],),
    );
  }
}