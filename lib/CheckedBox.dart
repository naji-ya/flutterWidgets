import 'package:flutter/material.dart';

void mian(){

  runApp(MaterialApp(
    home: Checkedbox(),
  ));
}

class Checkedbox extends StatefulWidget {


  @override
  State<Checkedbox> createState() => _CheckedboxState();
}

class _CheckedboxState extends State<Checkedbox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Checkbox(value: isChecked, onChanged: (bool ? value){

          setState(() {
            isChecked=value!;
          });

        }),
      ),

    );
  }
}
