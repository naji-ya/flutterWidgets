import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BuilderGridview(),
  ));

}

class BuilderGridview extends StatelessWidget {

  var icons=[
    Icons.directions_car_filled_outlined,
    Icons.directions_bike_outlined,
    Icons.directions_boat_filled,
    Icons.directions_bus,
    Icons.directions_train,
    Icons.directions_walk,
    Icons.contact_mail_outlined,
    Icons.duo_outlined,
    Icons.hourglass_bottom,
    Icons.mobile_friendly,
    Icons.message_outlined,
    Icons.key,
    Icons.wifi,
    Icons.bluetooth,
    Icons.emoji_emotions
  ];

  var name=[
    "Car",
    "Bicycle",
    "Boat",
    "Bus",
    "Train",
    "Walk",
    "Contact",
    "Duo",
    "Hour",
    "Mobile",
        "Message",
    "Key",
    "Wifi",
    "Blutooth",
    "Smile"
  ];
var color=[
  Colors.green,
  Colors.blue.shade500,
  Colors.blue.shade200,
  Colors.green.shade600,
  Colors.pink.shade500,
  Colors.lightGreenAccent,
  Colors.grey.shade300,
  Colors.green,
  Colors.pink.shade700,
  Colors.purple.shade900,
  Colors.brown,
  Colors.brown.shade200,
  Colors.purple,
  Colors.purple.shade200,
  Colors.blueGrey.shade200,


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text("Grid View Builder"),
            SizedBox(
              width: 20,
            ),
            Text("GridviewCustom"),
          ],
        ),

      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: name.length,
          itemBuilder: (context,index){
        return Card(
          color: color[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index],
              size: 40,),
              Text(name[index],
              style: TextStyle(
                fontSize:
                  20
              ),),
            ],
          ),
        );
          }),
    );
  }
}
