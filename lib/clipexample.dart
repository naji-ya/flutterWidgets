import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ClipWidgetexample(),
  ));
}

class ClipWidgetexample extends StatelessWidget {
  const ClipWidgetexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRect(clipBehavior: Clip.hardEdge,
              child: Container(
                height: 200,
                width: 200,
               child: Image(image: AssetImage("assets/images/Statue.webp"),fit: BoxFit.fill,),

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 200,
                width: 200,
                child: Image(image: AssetImage("assets/images/vancouver.jpg"),fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              width: 200,
              child: ClipOval(
                  child: Image(image: AssetImage("assets/images/snowsunset.jpg"),fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
