import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottomnavigation(),
  ));
}

class Bottomnavigation extends StatefulWidget {

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
var screens=[
  Text("Home"),
  Text("Favorite"),
  Text("Settings"),
  Text("Notification")
];

int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      bottomNavigationBar:BottomNavigationBar(
          currentIndex: index,
          onTap: (ontapIndex){
            setState(() {
              index=ontapIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.yellow,
         // selectedItemColor: ,
         //  unselectedItemColor: ,

          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
      ]) ,
    );
  }
}
