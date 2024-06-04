import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridviewExtendex(),
  ));
}

class GridviewExtendex extends StatelessWidget {
  var name = ["Anu", "Amal", "Asin", "Akbar", "Alan"];
  var icons = [
    Icons.person,
    Icons.add,
    Icons.money,
    Icons.mobile_friendly,
    Icons.mail
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GridView.extent(maxCrossAxisExtent: 150,
      children: List.generate(name.length, (index){
        return Card(
          color: Colors.blueGrey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index],size: 50,),
              Text(name[index]),
            ],
          ),
        );
      }),),

    );
  }
}
