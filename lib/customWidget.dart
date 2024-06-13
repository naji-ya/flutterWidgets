import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {

  final Image img;
  final Color clr;
  final Text txt;

  Customwidget({ required this.txt, required this.img, required this.clr, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Card(
        color: clr,
        child: ListTile(
          leading: img,
          title: txt,
        ),
      ),
    );
  }
}
