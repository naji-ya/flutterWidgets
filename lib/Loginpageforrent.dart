import 'package:flutter/material.dart';

class RentLoginPage extends StatefulWidget {

  @override
  State<RentLoginPage> createState() => _RentLoginPageState();
}

class _RentLoginPageState extends State<RentLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.blue.shade50,
      child: Column(
        children: const [
Padding(
  padding: EdgeInsets.only(top:200),
  child:   Image(image: AssetImage("assets/images/car-rent.png"),

  height: 90,

  width: 90,),
),
          SizedBox(height: 15,),
          Text("Login here",),
        ],
      ),
    );
  }
}
