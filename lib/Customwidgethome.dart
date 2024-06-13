import 'package:flutter/material.dart';
import 'package:untitled1/customWidget.dart';

void main(){
  runApp(MaterialApp(
    home: Customwidethome(),
  ));
}
class Customwidethome extends StatelessWidget {
  const Customwidethome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Customwidget(txt: Text("Home"), img: Image(image: AssetImage("assets/images/dry-tree.webp")), clr: Colors.purple),
      )
    );
  }
}
