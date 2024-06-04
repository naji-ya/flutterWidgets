import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsapp(),
  ));
}

class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/flower.jpg"),
              fit: BoxFit.fill),
        ),
        width: double.infinity,

        child:  Column(mainAxisAlignment: MainAxisAlignment.center,
          children:
              const [
               Image(image: AssetImage("assets/images/whatsapp.png"),
               height: 100,
               width: 100,),
            Text(
              "WhatsApp",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
