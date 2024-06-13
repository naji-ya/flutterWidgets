import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: flexibleWidget(),
  ));
}

class flexibleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
              color: Colors.yellow,
            )),
            Flexible(flex: 3,
                child: Container(
              color: Colors.blueGrey,
            )),
            Flexible(flex:6,child: Container(
              color: Colors.pink,
            )),
          ],
        ),
      ),
    );
  }
}
