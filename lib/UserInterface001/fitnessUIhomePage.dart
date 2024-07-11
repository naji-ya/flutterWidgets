import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/UserInterface001/ftTabbar.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FitnessHomePage(),
  ));
}

class FitnessHomePage extends StatelessWidget {
  var colr = [
    Colors.red,
    Colors.deepPurple,
    Colors.orange,
    Colors.lightBlueAccent,
    Colors.blueAccent.shade700,
    Colors.green
  ];

  var title = [
    "Hear Rate",
    "Sleep",
    "Energy Burn",
    "Steps",
    "Running",
    "Cycling"
  ];

  var centerTitle = [
    "124 bpm",
    "8 h 42 m",
    "583 kcal",
    "16741",
    "5.3 km",
    "12.5 km"
  ];
  var icon = [
    FaIcon(FontAwesomeIcons.heartbeat),
    FaIcon(FontAwesomeIcons.moon),
    FaIcon(FontAwesomeIcons.fireBurner),
    FaIcon(FontAwesomeIcons.shoePrints),
    FaIcon(FontAwesomeIcons.running),
    FaIcon(FontAwesomeIcons.bicycle)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),

        backgroundColor: Colors.white,
        title: Text("STATS", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),),
        centerTitle: true,
        elevation: 0,

      ),
      body: Stack(
          children: [
          FitnessTabBar(),

      Padding(
        padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
            itemCount: 6, itemBuilder: (context, index) {
              return Card(
margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: colr[index],
                child: Stack(
                  children: [
                    Positioned(child: Text(title[index],style: TextStyle(

                        color: Colors.white,

                    ),),
                    top: 30,left:23,),

               Positioned(child: Text(centerTitle[index],style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
                 fontSize: 25
               ),),
               top: 70,
                 left: 23,
               ),

                    Text(title[index],style: TextStyle(

                      color: Colors.white,

                    ),),
                  ],
                ),
              );
            }),
      )
      ],
    ),);
  }
}
