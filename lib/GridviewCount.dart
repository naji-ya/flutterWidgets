import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewCount(),
  ));
}

class GridviewCount extends StatelessWidget {
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
      GridView.count(crossAxisCount: 3,
        children:
        List.generate(name.length, (index) {
          return Card(
            child: Column(
              children: [
                Icon(icons[index]),

                Text(name[index])],
            ),
          );
        }),
      ),
    );
  }
}
