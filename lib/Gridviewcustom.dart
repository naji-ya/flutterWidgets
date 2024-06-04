import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcustomwithfixedsliver(),
  ));
}
class Gridviewcustomwithfixedsliver extends StatelessWidget {
  var name=["anu","Ana","Aiswarya","Asin"];
  var icon=[Icons.person,Icons.call,Icons.mobile_friendly,Icons.message_outlined];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:
      GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

          childrenDelegate: SliverChildBuilderDelegate((context, index){
            return Card(
              color: Colors.yellow.shade800,

              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name[index]),
                  Icon(icon[index]),
                ],
              ),
            );
          },
          childCount: name.length)),
    );
  }
}
